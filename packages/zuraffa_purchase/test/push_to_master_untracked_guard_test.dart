// Regression test for arrrrny/zuraffa_purchase#9 — `push_to_master.sh -f`
// auto-committed the repo-local `.pub-cache/` directory into master and then
// tagged an unpublished release. `-f` means "auto-commit the dirty tree", and
// its `git add -A` swept every untracked path in with it, so a private pub
// cache sitting next to the packages became part of the release commit.
//
// The script must refuse to sweep an untracked DIRECTORY into its auto-commit
// unless the operator names it in PUBLISH_UNTRACKED_ALLOW. Untracked files
// keep the old behaviour: a stray file is a normal dirty-tree artifact, while
// an untracked directory is how a private cache or a scratch checkout ends up
// in master.
import 'dart:io';

import 'package:test/test.dart';

void main() {
  group('push_to_master.sh -f', () {
    late Directory workspace;
    late Directory repo;

    setUp(() {
      workspace = Directory.systemTemp.createTempSync('zuraffa-purchase-9-');
      // The bare origin lives OUTSIDE the work tree: inside it, it would be
      // an untracked directory and the guard under test would refuse it.
      final origin = Directory('${workspace.path}/origin.git');
      _git(workspace, ['init', '--bare', '-q', origin.path]);

      repo = Directory('${workspace.path}/repo')..createSync();
      _git(repo, ['init', '-q', '-b', 'master', '.']);
      File('${repo.path}/README.md').writeAsStringSync('# repo\n');
      File('${repo.path}/.gitignore').writeAsStringSync('.dart_tool/\n');
      _git(repo, ['add', '-A']);
      _git(repo, ['commit', '-q', '-m', 'base']);
      _git(repo, ['remote', 'add', 'origin', origin.path]);
      _git(repo, ['push', '-q', 'origin', 'master']);

      // A publish branch carrying one commit beyond master, which is what the
      // script merges and tags.
      _git(repo, ['checkout', '-q', '-b', 'publish-1.2.3']);
      File('${repo.path}/CHANGELOG.md').writeAsStringSync('## 1.2.3\n');
      _git(repo, ['add', '-A']);
      _git(repo, [
        'commit',
        '-q',
        '-m',
        'Prepare for publishing version 1.2.3',
      ]);
    });

    tearDown(() {
      if (workspace.existsSync()) {
        workspace.deleteSync(recursive: true);
      }
    });

    test('refuses to auto-commit an untracked .pub-cache directory', () {
      // The incident's exact shape: tracked drift plus a private pub cache
      // that is NOT gitignored (the ignore was only added as recovery).
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, '.pub-cache/hosted/pub.dev/x-1.0.0/pubspec.yaml');

      final result = _runPushToMaster(repo);

      expect(
        result.exitCode,
        isNot(0),
        reason:
            'a refused auto-commit must exit non-zero, or a caller '
            'chaining on its exit code proceeds as if the publish succeeded',
      );
      expect(result.stdout, contains('.pub-cache'));
      _expectAbsentFromMaster(repo, '.pub-cache');
      _expectNoTag(repo, '1.2.3');
    });

    test('refuses any untracked directory, not just .pub-cache', () {
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, isNot(0));
      expect(result.stdout, contains('scratch'));
      _expectAbsentFromMaster(repo, 'scratch');
    });

    test('sweeps an untracked directory named in PUBLISH_UNTRACKED_ALLOW', () {
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(
        repo,
        environment: {'PUBLISH_UNTRACKED_ALLOW': 'scratch'},
      );

      expect(result.exitCode, 0, reason: result.stdout.toString());
      _expectOnMaster(repo, 'scratch/keep.txt');
    });

    test('leaves an ignored directory alone', () {
      // The recovery commit gitignored .pub-cache/; an ignored directory can
      // never be committed, so the guard must not refuse it.
      File(
        '${repo.path}/.gitignore',
      ).writeAsStringSync('.dart_tool/\n.pub-cache/\n');
      _git(repo, ['commit', '-q', '-am', 'ignore the private pub cache']);
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, '.pub-cache/hosted/pub.dev/x-1.0.0/pubspec.yaml');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, 0, reason: result.stdout.toString());
      _expectAbsentFromMaster(repo, '.pub-cache');
    });

    test('leaves a directory alone when every file in it is ignored', () {
      // `.pub-cache/*` ignores the CONTENTS while git still reports the
      // directory itself as untracked — the form gitignore.io emits for many
      // tools. `git add -A` stages nothing from it, so a publish must not be
      // blocked on it.
      File(
        '${repo.path}/.gitignore',
      ).writeAsStringSync('.dart_tool/\n.pub-cache/*\n');
      _git(repo, ['commit', '-q', '-am', 'ignore the private pub cache']);
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, '.pub-cache/hosted/pub.dev/x-1.0.0/pubspec.yaml');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, 0, reason: result.stdout.toString());
      _expectAbsentFromMaster(repo, '.pub-cache');
    });

    test('leaves an empty untracked directory alone', () {
      // A stale empty directory from a crashed build holds nothing to sweep.
      _dirtyTrackedFile(repo);
      Directory('${repo.path}/scratch').createSync();

      final result = _runPushToMaster(repo);

      expect(result.exitCode, 0, reason: result.stdout.toString());
    });

    test('accepts the trailing-slash path its own refusal prints', () {
      // The obvious operator move is to copy the path out of the error
      // message, which prints `  scratch/` — that must be honoured verbatim.
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(
        repo,
        environment: {'PUBLISH_UNTRACKED_ALLOW': 'scratch/'},
      );

      expect(result.exitCode, 0, reason: result.stdout.toString());
      _expectOnMaster(repo, 'scratch/keep.txt');
    });

    test('does not glob-expand an allow entry against the directory', () {
      // `for a in $allow` pathname-expands as well as word-splitting, so a
      // `scr*` entry would silently allow `scratch/` without naming it.
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(
        repo,
        environment: {'PUBLISH_UNTRACKED_ALLOW': 'scr*'},
      );

      expect(result.exitCode, isNot(0));
      expect(result.stdout, contains('scratch'));
      _expectAbsentFromMaster(repo, 'scratch');
    });

    test('reports a commitless publish branch, not the untracked directory', () {
      // Nothing to merge is the real problem; pointing the operator at
      // .gitignore would send them to fix the wrong thing.
      _git(repo, ['checkout', '-q', '-b', 'publish-0.0.0', 'master']);
      _git(repo, ['branch', '-q', '-D', 'publish-1.2.3']);
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, isNot(0));
      expect(result.stdout, contains('no commits beyond master'));
      expect(result.stdout, isNot(contains('Untracked directories')));
    });

    test('still auto-commits untracked files', () {
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'notes.txt');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, 0, reason: result.stdout.toString());
      _expectOnMaster(repo, 'notes.txt');
    });

    test('ignores an ambient PUBLISH_UNTRACKED_ALLOW from the runner', () {
      // The suite must not inherit the operator's shell: a guard test that
      // passes alone and fails where the knob is exported is the worst kind
      // of flake. `environment:` replaces the parent's, so the variable the
      // test does not pass cannot reach the script.
      _dirtyTrackedFile(repo);
      _untrackedFile(repo, 'scratch/keep.txt');

      final result = _runPushToMaster(repo);

      expect(result.exitCode, isNot(0));
      _expectAbsentFromMaster(repo, 'scratch');
    });
  });
}

/// Leaves a tracked modification in the work tree, which is what puts
/// `push_to_master.sh` on its auto-commit path at all.
void _dirtyTrackedFile(Directory repo) {
  File('${repo.path}/README.md').writeAsStringSync('# repo\n\ndrift\n');
}

/// Writes [relativePath] into [repo] without adding it to the index.
void _untrackedFile(Directory repo, String relativePath) {
  final file = File('${repo.path}/$relativePath');
  file.parent.createSync(recursive: true);
  file.writeAsStringSync('untracked\n');
}

/// Runs the script under test against [repo].
///
/// The child gets ONLY the variables named here plus the few the script needs
/// to find its tools. `Process.runSync` adds `environment` to the parent's by
/// default, and the parent is the test runner's shell — where an operator who
/// followed PUBLISH.md has `PUBLISH_UNTRACKED_ALLOW` exported. That variable
/// would leak in and silently allow the untracked directory a test expects to
/// be refused, so the suite would pass alone and fail in exactly the shell the
/// knob documents.
ProcessResult _runPushToMaster(
  Directory repo, {
  Map<String, String> environment = const {},
}) {
  final script = _scriptPath();
  return Process.runSync(
    'bash',
    [script.path, '-f'],
    workingDirectory: repo.path,
    environment: {
      'PATH': Platform.environment['PATH']!,
      'HOME': Platform.environment['HOME']!,
      ...environment,
    },
    includeParentEnvironment: false,
  );
}

/// The repo's `scripts/push_to_master.sh`, resolved from either the package
/// directory (`dart test` from the package) or the repo root.
File _scriptPath() {
  for (final candidate in [
    '../../scripts/push_to_master.sh',
    'scripts/push_to_master.sh',
  ]) {
    final file = File(candidate);
    if (file.existsSync()) return file.absolute;
  }
  fail('scripts/push_to_master.sh not found from ${Directory.current.path}');
}

/// Asserts [path] is tracked on master.
void _expectOnMaster(Directory repo, String path) {
  final result = _git(repo, ['ls-tree', '-r', '--name-only', 'master']);
  expect(
    result.stdout.toString().split('\n'),
    contains(path),
    reason: '$path should have been committed to master',
  );
}

/// Asserts nothing under [prefix] reached master.
void _expectAbsentFromMaster(Directory repo, String prefix) {
  final result = _git(repo, ['ls-tree', '-r', '--name-only', 'master']);
  final leaked = result.stdout
      .toString()
      .split('\n')
      .where((line) => line == prefix || line.startsWith('$prefix/'))
      .toList();
  expect(leaked, isEmpty, reason: '$prefix leaked into master: $leaked');
}

/// Asserts the release tag was not created.
void _expectNoTag(Directory repo, String version) {
  final result = Process.runSync('git', [
    'tag',
    '--list',
    version,
  ], workingDirectory: repo.path);
  expect(result.stdout.toString().trim(), isEmpty);
}

/// Runs git in [cwd], failing the test on a non-zero exit.
ProcessResult _git(Directory cwd, List<String> args) {
  final result = Process.runSync('git', [
    '-c',
    'user.name=Test',
    '-c',
    'user.email=test@example.com',
    '-c',
    'commit.gpgsign=false',
    ...args,
  ], workingDirectory: cwd.path);
  expect(
    result.exitCode,
    0,
    reason: 'git ${args.join(' ')} failed: ${result.stderr}',
  );
  return result;
}
