// Regression test for arrrrny/zuraffa#1984 — the contract-lane hand-step
// writer (`tool/wire_seams_002.py`) appended the
// `zfa:tdd: contract:<id>:hand` marker on EVERY run of the hand step, so
// the same line landed in the contract subject twice, byte for byte.
//
// The marker records THAT the hand step completed: a second copy carries no
// information and only makes the emitted file look corrupt. The writer must
// therefore be idempotent — a re-run leaves exactly one copy — and it must
// leave it immediately before the `library;` directive, which is where the
// writer puts it.
import 'dart:io';

import 'package:test/test.dart';

/// The contract behaviors the hand-step writer owns (arrrrny/zuraffa#1984).
const List<String> _contractBids = ['A1', 'A2', 'A3', 'A4'];

void main() {
  // The hand-step writer is a Python script, so a machine without python3
  // cannot exercise it — skip with a clear reason instead of failing with an
  // opaque ProcessException.
  final pythonMissing = !_pythonAvailable();
  final skipReason = pythonMissing ? 'python3 is not available' : null;

  group('the contract-lane hand-step writer', () {
    late Directory workspace;

    setUp(() {
      workspace = Directory.systemTemp.createTempSync('zuraffa-purchase-1984-');
    });

    tearDown(() {
      if (workspace.existsSync()) {
        workspace.deleteSync(recursive: true);
      }
    });

    for (final bid in _contractBids) {
      test(
        'emits the hand-step marker exactly once per contract subject ($bid)',
        () {
          final subject = _writeContractSubject(workspace, bid, _stub(bid));

          _runHandStep(workspace, bid);

          _expectSingleMarkerBeforeLibrary(subject, bid);
        },
        skip: skipReason,
      );

      test(
        'a re-run of the hand step does not append the marker again ($bid)',
        () {
          final subject = _writeContractSubject(workspace, bid, _stub(bid));

          _runHandStep(workspace, bid);
          _runHandStep(workspace, bid);

          _expectSingleMarkerBeforeLibrary(subject, bid);
        },
        skip: skipReason,
      );

      test(
        'collapses an already duplicated marker into a single copy ($bid)',
        () {
          final subject = _writeContractSubject(
            workspace,
            bid,
            '${_stub(bid)}${_marker(bid)}${_marker(bid)}library;\n',
          );

          _runHandStep(workspace, bid);

          _expectSingleMarkerBeforeLibrary(subject, bid);
        },
        skip: skipReason,
      );

      test("leaves another lane's hand-step marker alone ($bid)", () {
        final subject = _writeContractSubject(
          workspace,
          bid,
          '${_stub(bid)}${_foreignMarker()}library;\n',
        );

        _runHandStep(workspace, bid);

        expect(
          subject.readAsLinesSync(),
          contains(_foreignMarker().trimRight()),
          reason: 'the writer must only strip its OWN marker',
        );
        _expectSingleMarkerBeforeLibrary(subject, bid);
      }, skip: skipReason);
    }
  });
}

/// The hand-step marker the contract lane writes for [bid].
String _marker(String bid) =>
    '// zfa:tdd: contract:$bid:hand — hand step completed before first red '
    'certification (issue #1411)\n';

/// The hand-step marker of ANOTHER lane — the unit/acceptance lane writes
/// `// zfa:tdd: <id>:hand` without the `contract:` prefix. The contract
/// writer must not touch it.
String _foreignMarker() =>
    '// zfa:tdd: A8:hand — hand step completed before first red certification '
    '(issue #1411)\n';

/// The generated stub the hand step replaces, carrying no marker.
String _stub(String bid) =>
    '// GENERATED STUB — `zfa tdd gen contract:$bid` (issue #1007).\n'
    '//\n'
    '// behavior_id: contract:$bid\n';

/// The hand-step marker lines the contract subject of [bid] carries.
List<String> _markerLines(File subject, String bid) => subject
    .readAsLinesSync()
    .where((line) => line.startsWith(_markerPrefix(bid)))
    .toList();

/// The marker PREFIX the contract lane writes for [bid] — the shape shared
/// by every copy of the marker, whatever its trailing text.
String _markerPrefix(String bid) => '// zfa:tdd: contract:$bid:hand';

/// The subject must carry exactly one marker, immediately before the
/// `library;` directive: the writer's contract, and the position the
/// duplicated marker broke.
void _expectSingleMarkerBeforeLibrary(File subject, String bid) {
  expect(_markerLines(subject, bid).length, 1);

  final lines = subject.readAsLinesSync();
  final library = lines.indexOf('library;');
  expect(library, greaterThan(0), reason: 'the subject lost its `library;`');
  expect(
    lines[library - 1],
    startsWith(_markerPrefix(bid)),
    reason: 'the marker must sit immediately before `library;`',
  );
}

/// Whether python3 — the hand-step writer's runtime — is available.
bool _pythonAvailable() {
  try {
    return Process.runSync('python3', ['--version']).exitCode == 0;
  } on ProcessException {
    return false;
  }
}

/// The contract subject of the 002 feature, in a throwaway copy of the
/// package tree: the writer resolves its paths from its own location, so
/// the script is copied next to the tree it writes into.
File _writeContractSubject(Directory workspace, String bid, String content) {
  final directory = Directory(
    '${workspace.path}/lib/tdd/002-subscription-error-vocabulary',
  )..createSync(recursive: true);
  final subject = File(
    '${directory.path}/contract_${bid.toLowerCase()}_subject.dart',
  )..writeAsStringSync(content);
  return subject;
}

/// Runs the contract-lane hand-step writer for [behaviorId] against the
/// throwaway tree.
void _runHandStep(Directory workspace, String behaviorId) {
  final toolDir = Directory('${workspace.path}/tool')..createSync();
  final script = File('tool/wire_seams_002.py');
  expect(script.existsSync(), isTrue, reason: 'the writer script is missing');
  script.copySync('${toolDir.path}/wire_seams_002.py');

  final result = Process.runSync('python3', [
    '-c',
    'import importlib.util, sys\n'
        'spec = importlib.util.spec_from_file_location("wire_seams_002", '
        'sys.argv[1])\n'
        'module = importlib.util.module_from_spec(spec)\n'
        'spec.loader.exec_module(module)\n'
        'module.write_contract_subject(sys.argv[2])\n',
    '${toolDir.path}/wire_seams_002.py',
    behaviorId,
  ]);
  expect(
    result.exitCode,
    0,
    reason: 'the hand-step writer failed: ${result.stderr}',
  );
}
