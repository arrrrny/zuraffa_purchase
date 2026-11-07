import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:zuraffa_purchase/src/port_code_vocabulary.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

void main() {
  group('PurchaseSubscriptionStore vocabulary', () {
    test('carries exactly the codes the port produces', () {
      expect(portCodeVocabulary, _portVocabularyFromFactories());
    });

    test('the port declares no code beyond the ones its factories produce', () {
      expect(_portVocabularyFromSource(), _portVocabularyFromFactories());
    });
  });
}

/// The codes the port's public factories can produce.
Set<String> _portVocabularyFromFactories() => {
  SubscriptionException.cancelled().code,
  SubscriptionException.productUnavailable('product').code,
  SubscriptionException.storeUnavailable('detail').code,
  SubscriptionException.pending().code,
};

/// The codes the port's source declares, read from the installed package.
///
/// The factories are the vocabulary's source of truth, but a new factory
/// only enters this list when someone names it — so the source is read too:
/// a `zuraffa_subscriptions` bump that adds a code fails here instead of
/// being silently downgraded to `store_unavailable` by the adapter.
Set<String> _portVocabularyFromSource() {
  final libDir = Directory(
    '${_resolvedPackageRoot('zuraffa_subscriptions')}/lib',
  );
  final codes = <String>{};
  for (final entity in libDir.listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.dart')) continue;
    final source = entity.readAsStringSync();
    if (!source.contains('class SubscriptionException')) continue;
    codes.addAll(
      RegExp(
        r"SubscriptionException\(\s*'([^']*)'",
      ).allMatches(source).map((match) => match.group(1)!),
    );
  }
  expect(
    codes,
    isNotEmpty,
    reason:
        'could not read the port vocabulary from the installed '
        'zuraffa_subscriptions package — the guard cannot compare anything',
  );
  return codes;
}

/// The root directory of [packageName] as the resolved package config sees it.
String _resolvedPackageRoot(String packageName) {
  final configFile = File('.dart_tool/package_config.json');
  expect(
    configFile.existsSync(),
    isTrue,
    reason: 'the resolved package config is missing — run `dart pub get`',
  );
  final config =
      jsonDecode(configFile.readAsStringSync()) as Map<String, dynamic>;
  final packages = config['packages']! as List<dynamic>;
  final entry = packages.cast<Map<String, dynamic>>().firstWhere(
    (package) => package['name'] == packageName,
    orElse: () => throw StateError('$packageName is not a dependency here'),
  );
  final rootUri = entry['rootUri']! as String;
  if (rootUri.startsWith('file://')) return Uri.parse(rootUri).toFilePath();
  // A relative rootUri resolves against the config file's own directory.
  final configDir = configFile.parent.path;
  return '$configDir/$rootUri';
}
