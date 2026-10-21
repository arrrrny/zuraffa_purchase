#!/usr/bin/env python3
"""Hand-implement the unit-lane subjects of feature 001-purchase-store.

`zfa tdd gen` writes a stub subject and a scaffold test for every unit
behavior. This script performs the hand step for each of them: the subject
drives the REAL implementation over the scriptable `RecordingStoreApi` and
returns the observable outcome, and the paired test asserts that outcome
(the generated vacuous guard is replaced by real assertions).

The generated header, the group title and the test title are preserved — the
cycle tooling resolves a behavior by its test title.
"""

import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[1]
SUBJECTS = ROOT / "lib" / "tdd" / "001-purchase-store"
TESTS = ROOT / "test" / "tdd" / "001-purchase-store"

NOTE = (
    "// IMPLEMENTED (spec 001-purchase-store): the subject drives the real\n"
    "// implementation over the scriptable RecordingStoreApi and returns the\n"
    "// observable outcome the paired test asserts.\n"
)

PRODUCT_HELPER = """StoreProduct _product(String id) => StoreProduct(
  id: id,
  title: 'Pro $id',
  description: 'desc',
  priceMicros: 4990000,
  currency: 'USD',
);
"""

SUBJECT_BODIES = {
    "U2": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U2 — the store reports itself unavailable.
Future<PurchaseException?> subject_u2(List<String> productIds) async {
  final store = RecordingStoreApi(available: false);
  final service = PurchaseService(port: StoreApiPurchasePort(store: store));
  try {
    await service.products(productIds);
  } on PurchaseException catch (error) {
    return error;
  }
  return null;
}
""",
    "U3": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

"""
    + PRODUCT_HELPER
    + """
/// Subject for behavior U3 — a completed store purchase.
Future<PurchaseOutcome> subject_u3() async {
  final store = RecordingStoreApi(
    catalog: [_product('pro.monthly')],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-1',
      productId: request.productId,
      status: StoreTransactionStatus.purchased,
      purchasedAt: 1700000000000,
      expiresAt: 1702592000000,
      receipt: 'receipt-abc',
      needsFinish: true,
    ),
  );
  final service = PurchaseService(port: StoreApiPurchasePort(store: store));
  return service.purchase(const PurchaseIntent(productId: 'pro.monthly'));
}
""",
    "U4": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

"""
    + PRODUCT_HELPER
    + """
/// Subject for behavior U4 — a cancelled purchase and a deferred purchase.
Future<({PurchaseException? failure, PurchaseOutcome? outcome})> subject_u4() async {
  final cancelled = RecordingStoreApi(
    catalog: [_product('pro.monthly')],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-cancelled',
      productId: request.productId,
      status: StoreTransactionStatus.cancelled,
      purchasedAt: 0,
    ),
  );
  PurchaseException? failure;
  try {
    await PurchaseService(port: StoreApiPurchasePort(store: cancelled))
        .purchase(const PurchaseIntent(productId: 'pro.monthly'));
  } on PurchaseException catch (error) {
    failure = error;
  }

  final deferred = RecordingStoreApi(
    catalog: [_product('pro.monthly')],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-pending',
      productId: request.productId,
      status: StoreTransactionStatus.pending,
      purchasedAt: 0,
    ),
  );
  final outcome = await PurchaseService(port: StoreApiPurchasePort(store: deferred))
      .purchase(const PurchaseIntent(productId: 'pro.monthly'));
  return (failure: failure, outcome: outcome);
}
""",
    "U5": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U5 — the store replays two restored transactions.
Future<List<PurchaseOutcome>> subject_u5() async {
  final store = RecordingStoreApi(
    restoredTransactions: const [
      StoreTransaction(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 1,
      ),
      StoreTransaction(
        transactionId: 'tx-2',
        productId: 'pro.yearly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 2,
      ),
    ],
  );
  return PurchaseService(port: StoreApiPurchasePort(store: store)).restore();
}
""",
    "U6": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U6 — the store is asked to complete the transaction.
Future<List<String>> subject_u6(String transactionId) async {
  final store = RecordingStoreApi();
  final service = PurchaseService(port: StoreApiPurchasePort(store: store));
  await service.finish(transactionId);
  await service.finish('tx-unknown');
  return store.completedTransactionIds;
}
""",
    "U7": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U7 — every store status is mapped onto its own
/// `PurchaseStatus`.
Future<List<PurchaseOutcome>> subject_u7() async {
  final store = RecordingStoreApi(
    restoredTransactions: const [
      StoreTransaction(
        transactionId: 'tx-purchased',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.purchased,
        purchasedAt: 1,
      ),
      StoreTransaction(
        transactionId: 'tx-restored',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 2,
      ),
      StoreTransaction(
        transactionId: 'tx-pending',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.pending,
        purchasedAt: 3,
      ),
      StoreTransaction(
        transactionId: 'tx-cancelled',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.cancelled,
        purchasedAt: 4,
      ),
      StoreTransaction(
        transactionId: 'tx-failed',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.failed,
        purchasedAt: 5,
      ),
    ],
  );
  return PurchaseService(port: StoreApiPurchasePort(store: store)).restore();
}
""",
    "U8": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U8 — the subscription store's catalog.
Future<List<subs.Product>> subject_u8(List<String> productIds) async {
  final store = RecordingStoreApi(
    catalog: const [
      StoreProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
      ),
      StoreProduct(
        id: 'pro.yearly',
        title: 'Pro yearly',
        description: 'yearly plan',
        priceMicros: 49900000,
        currency: 'USD',
      ),
    ],
  );
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
  );
  return subscriptionStore.fetchProducts(productIds);
}
""",
    "U9": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U9 — a completed and a deferred subscription purchase.
Future<({subs.StorePurchase purchased, subs.StorePurchase pending})> subject_u9() async {
  final catalog = const [
    StoreProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
    ),
  ];

  final completed = RecordingStoreApi(
    catalog: catalog,
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-1',
      productId: request.productId,
      status: StoreTransactionStatus.purchased,
      purchasedAt: 1700000000000,
      receipt: 'receipt-abc',
      needsFinish: true,
    ),
  );
  final deferred = RecordingStoreApi(
    catalog: catalog,
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-pending',
      productId: request.productId,
      status: StoreTransactionStatus.pending,
      purchasedAt: 1700000000000,
    ),
  );

  final purchased = await PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: completed),
    billingPeriod: const Duration(days: 31),
  ).purchase(const subs.PurchaseRequest(productId: 'pro.monthly'));
  final pending = await PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: deferred),
    billingPeriod: const Duration(days: 31),
  ).purchase(const subs.PurchaseRequest(productId: 'pro.monthly'));

  return (purchased: purchased, pending: pending);
}
""",
    "U10": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U10 — the subscription store replays two purchases.
Future<List<subs.StorePurchase>> subject_u10() async {
  final store = RecordingStoreApi(
    restoredTransactions: const [
      StoreTransaction(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 1,
      ),
      StoreTransaction(
        transactionId: 'tx-2',
        productId: 'pro.yearly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 2,
      ),
    ],
  );
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
  );
  return subscriptionStore.restore();
}
""",
    "U11": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U11 — the subscription store finishes a transaction.
Future<List<String>> subject_u11(String transactionId) async {
  final store = RecordingStoreApi();
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
  );
  await subscriptionStore.finishPurchase(transactionId);
  return store.completedTransactionIds;
}
""",
    "U12": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U12 — the typed failure taxonomy.
Future<List<PurchaseException>> subject_u12() async {
  final exceptions = <PurchaseException>[
    PurchaseException.cancelled(),
    PurchaseException.productUnavailable('ghost.product'),
    PurchaseException.storeUnavailable('the purchase timed out'),
    PurchaseException.storeNotAvailable(),
    PurchaseException.pending(),
  ];

  final store = RecordingStoreApi();
  PurchaseException? raised;
  try {
    await PurchaseService(port: StoreApiPurchasePort(store: store))
        .purchase(const PurchaseIntent(productId: 'ghost.product'));
  } on PurchaseException catch (error) {
    raised = error;
  }
  if (raised != null) {
    exceptions.add(raised);
  }
  return exceptions;
}
""",
    "U13": """import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U13 — the composition root registers the family.
void subject_u13(GetIt getIt, {PurchasePort? port}) =>
    registerPurchaseDependencies(getIt, port: port);
""",
}

TEST_IMPORTS = {
    "U2": "",
    "U3": "import 'package:zuraffa_purchase/zuraffa_purchase.dart';\n",
    "U4": "import 'package:zuraffa_purchase/zuraffa_purchase.dart';\n",
    "U5": "import 'package:zuraffa_purchase/zuraffa_purchase.dart';\n",
    "U6": "",
    "U7": "import 'package:zuraffa_purchase/zuraffa_purchase.dart';\n",
    "U8": "",
    "U9": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
    "U10": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
    "U11": "",
    "U12": "",
    "U13": "import 'package:zuraffa/zuraffa.dart';\nimport 'package:zuraffa_purchase/zuraffa_purchase.dart';\n",
}

TEST_BODIES = {
    "U2": """      final error = await subject.subject_u2(const ['pro.monthly']);
      expect(error, isNotNull,
          reason: 'a store that reports itself unavailable surfaces as a '
              'typed failure, not an empty catalog');
      expect(error!.code, 'store_unavailable');
      expect(error.recoverable, isFalse,
          reason: 'a store that reports itself unavailable is not recoverable');
""",
    "U3": """      final outcome = await subject.subject_u3();
      expect(outcome.status, PurchaseStatus.purchased);
      expect(outcome.transactionId, 'tx-1');
      expect(outcome.productId, 'pro.monthly');
      expect(outcome.purchasedAt, 1700000000000);
      expect(outcome.expiresAt, 1702592000000);
      expect(outcome.receipt, 'receipt-abc');
      expect(outcome.pendingFinish, isTrue,
          reason: 'a purchase is handed to the caller unacknowledged');
""",
    "U4": """      final result = await subject.subject_u4();
      expect(result.failure, isNotNull,
          reason: 'a cancelled purchase is a typed failure');
      expect(result.failure!.code, 'cancelled');
      expect(result.failure!.recoverable, isTrue);
      expect(result.outcome, isNotNull,
          reason: 'a deferred purchase is never a failure');
      expect(result.outcome!.status, PurchaseStatus.pending);
      expect(result.outcome!.status, isNot(PurchaseStatus.purchased));
""",
    "U5": """      final outcomes = await subject.subject_u5();
      expect(outcomes, hasLength(2));
      expect(
        outcomes.map((outcome) => outcome.transactionId).toList(),
        ['tx-1', 'tx-2'],
      );
      expect(
        outcomes.map((outcome) => outcome.status).toList(),
        everyElement(PurchaseStatus.restored),
      );
""",
    "U6": """      final completed = await subject.subject_u6('tx-1');
      expect(completed, ['tx-1', 'tx-unknown'],
          reason: 'the store is asked to complete exactly the id it is given, '
              'and an unknown id completes without raising');
""",
    "U7": """      final outcomes = await subject.subject_u7();
      expect(
        outcomes.map((outcome) => outcome.status).toList(),
        [
          PurchaseStatus.purchased,
          PurchaseStatus.restored,
          PurchaseStatus.pending,
          PurchaseStatus.cancelled,
          PurchaseStatus.failed,
        ],
        reason: 'every store status maps onto its own PurchaseStatus',
      );
""",
    "U8": """      final products = await subject.subject_u8(
        const ['pro.monthly', 'pro.yearly'],
      );
      expect(products, hasLength(2));
      expect(products.first.id, 'pro.monthly');
      expect(products.first.storeId, 'pro.monthly');
      expect(products.first.title, 'Pro monthly');
      expect(products.first.description, 'monthly plan');
      expect(products.first.priceMicros, 4990000);
      expect(products.first.currency, 'USD');
      expect(products.first.period, 'P1M');
""",
    "U9": """      final result = await subject.subject_u9();
      expect(result.purchased.state, subs.PurchaseState.purchased);
      expect(result.purchased.transactionId, 'tx-1');
      expect(result.purchased.productId, 'pro.monthly');
      expect(result.purchased.purchasedAt, 1700000000000);
      expect(
        result.purchased.expiresAt,
        1700000000000 + const Duration(days: 31).inMilliseconds,
        reason: 'the expiry is derived from the configured billing period',
      );
      expect(result.purchased.receipt, 'receipt-abc');
      expect(result.purchased.pendingFinish, isTrue);
      expect(result.pending.state, subs.PurchaseState.pending);
      expect(result.pending.expiresAt, isNull,
          reason: 'a pending purchase carries no expiry');
""",
    "U10": """      final purchases = await subject.subject_u10();
      expect(purchases, hasLength(2));
      expect(
        purchases.map((purchase) => purchase.transactionId).toList(),
        ['tx-1', 'tx-2'],
      );
      expect(
        purchases.map((purchase) => purchase.state).toList(),
        everyElement(subs.PurchaseState.restored),
      );
""",
    "U11": """      final completed = await subject.subject_u11('tx-1');
      expect(completed, ['tx-1'],
          reason: 'the store is asked to complete exactly that transaction id');
""",
    "U12": """      final exceptions = await subject.subject_u12();
      expect(
        exceptions.map((error) => error.code).toList(),
        containsAll(
          <String>['cancelled', 'product_unavailable', 'store_unavailable', 'pending'],
        ),
      );
      expect(
        exceptions.firstWhere((error) => error.code == 'cancelled').recoverable,
        isTrue,
      );
      expect(
        exceptions
            .firstWhere((error) => error.code == 'product_unavailable')
            .recoverable,
        isFalse,
      );
      expect(
        exceptions.firstWhere((error) => error.code == 'pending').recoverable,
        isTrue,
      );
      expect(
        exceptions.where((error) => error.code == 'product_unavailable'),
        hasLength(2),
        reason: 'a raised failure grants nothing and is never reported as a '
            'purchase',
      );
""",
    "U13": """      final getIt = GetIt.asNewInstance();
      subject.subject_u13(getIt);
      expect(getIt.isRegistered<PurchasePort>(), isTrue);
      expect(getIt.isRegistered<PurchaseService>(), isTrue);
      expect(getIt.isRegistered<PurchaseSubscriptionStore>(), isTrue);
      expect(identical(getIt<PurchasePort>(), getIt<PurchasePort>()), isTrue,
          reason: 'the port is a lazy singleton');
      expect(
        identical(getIt<PurchaseService>(), getIt<PurchaseService>()),
        isTrue,
      );
      expect(
        identical(
          getIt<PurchaseSubscriptionStore>(),
          getIt<PurchaseSubscriptionStore>(),
        ),
        isTrue,
      );

      final injected = GetIt.asNewInstance();
      final port = StoreApiPurchasePort(store: RecordingStoreApi());
      subject.subject_u13(injected, port: port);
      expect(identical(injected<PurchasePort>(), port), isTrue,
          reason: 'an injected port is honored');
""",
}


def write_subject(bid):
    path = SUBJECTS / f"{bid.lower()}_subject.dart"
    text = path.read_text()
    marker = "library;\n"
    head, _, _tail = text.partition(marker)
    path.write_text(
        head + marker + "\n" + NOTE + "\n" + SUBJECT_BODIES[bid].rstrip() + "\n"
    )


def write_test(bid):
    path = TESTS / f"{bid.lower()}_test.dart"
    text = path.read_text()
    group = re.search(r"group\('([^']*)'", text).group(1)
    title = re.search(r"test\('((?:[^'\\]|\\.)*)'", text).group(1)
    head = re.sub(r"^import .*\n", "", text.partition("void main() {")[0], flags=re.M)
    imports = (
        "import 'package:test/test.dart';\n"
        + TEST_IMPORTS[bid]
        + f"import 'package:zuraffa_purchase/tdd/001-purchase-store/"
        f"{bid.lower()}_subject.dart' as subject;\n"
    )
    path.write_text(
        f"{head.rstrip()}\n\n"
        f"{imports}\n"
        "void main() {\n"
        f"  group('{group}', () {{\n"
        f"    test('{title}', () async {{\n"
        f"{TEST_BODIES[bid]}"
        "    });\n"
        "  });\n"
        "}\n"
    )


def main():
    for bid in SUBJECT_BODIES:
        write_subject(bid)
        write_test(bid)
    print(f"implemented {len(SUBJECT_BODIES)} unit subjects")


if __name__ == "__main__":
    main()
