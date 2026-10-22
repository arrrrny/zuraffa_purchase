// Regression test for arrrrny/zuraffa#1984 — the contract-lane hand-step
// writer (`tool/wire_seams_002.py`) appended the
// `zfa:tdd: contract:<id>:hand` marker on EVERY run of the hand step, so
// the same line landed in the contract subject twice, byte for byte.
//
// The marker records THAT the hand step completed: a second copy carries no
// information and only makes the emitted file look corrupt. The writer must
// therefore be idempotent — a re-run leaves exactly one copy.
import 'dart:io';

import 'package:test/test.dart';

void main() {
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

    test('emits the hand-step marker exactly once per contract subject', () {
      final subject = _writeContractSubject(
        workspace,
        '// GENERATED STUB — `zfa tdd gen contract:A1` (issue #1007).\n'
        '//\n'
        '// behavior_id: contract:A1\n'
        'library;\n',
      );

      _runHandStep(workspace, 'A1');

      expect(_markerLines(subject).length, 1);
    });

    test('a re-run of the hand step does not append the marker again', () {
      final subject = _writeContractSubject(
        workspace,
        '// GENERATED STUB — `zfa tdd gen contract:A1` (issue #1007).\n'
        '//\n'
        '// behavior_id: contract:A1\n'
        'library;\n',
      );

      _runHandStep(workspace, 'A1');
      _runHandStep(workspace, 'A1');

      expect(_markerLines(subject).length, 1);
    });

    test('collapses an already duplicated marker into a single copy', () {
      final subject = _writeContractSubject(
        workspace,
        '// GENERATED STUB — `zfa tdd gen contract:A1` (issue #1007).\n'
        '//\n'
        '// behavior_id: contract:A1\n'
        '// zfa:tdd: contract:A1:hand — hand step completed before first '
        'red certification (issue #1411)\n'
        '// zfa:tdd: contract:A1:hand — hand step completed before first '
        'red certification (issue #1411)\n'
        'library;\n',
      );

      _runHandStep(workspace, 'A1');

      expect(_markerLines(subject).length, 1);
    });
  });
}

/// The hand-step marker lines the contract subject carries.
List<String> _markerLines(File subject) => subject
    .readAsLinesSync()
    .where((line) => line.startsWith('// zfa:tdd: contract:A1:hand'))
    .toList();

/// The contract subject of the 002 feature, in a throwaway copy of the
/// package tree: the writer resolves its paths from its own location, so
/// the script is copied next to the tree it writes into.
File _writeContractSubject(Directory workspace, String content) {
  final directory = Directory(
    '${workspace.path}/lib/tdd/002-subscription-error-vocabulary',
  )..createSync(recursive: true);
  final subject = File('${directory.path}/contract_a1_subject.dart')
    ..writeAsStringSync(content);
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
