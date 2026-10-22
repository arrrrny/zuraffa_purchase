#!/usr/bin/env python3
"""Hand-implement the unit- and contract-lane seams of feature
002-subscription-error-vocabulary.

`zfa tdd gen` writes a stub subject and a scaffold test for every behavior.
This script performs the hand step for the unit and contract lanes: the
subject drives the REAL `PurchaseSubscriptionStore` over the scriptable
`ScriptedPurchasePort` and returns the observable outcome, and the paired
test asserts that outcome (the generated vacuous guard is replaced by real
assertions).

The acceptance lane is NOT handled here — it goes through `zfa tdd compose`,
which composes the acceptance subject against the green unit subjects.

The generated header, the group title and the test title are preserved — the
cycle tooling resolves a behavior by its test title.
"""

import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[1]
FEATURE = "002-subscription-error-vocabulary"
SUBJECTS = ROOT / "lib" / "tdd" / FEATURE
TESTS = ROOT / "test" / "tdd" / FEATURE

NOTE = (
    "// IMPLEMENTED (spec 002-subscription-error-vocabulary): the subject drives the\n"
    "// real implementation over the scriptable ScriptedPurchasePort and returns the\n"
    "// observable outcome the paired test asserts.\n"
)

CONTRACT_NOTE = (
    "// IMPLEMENTED (spec 002-subscription-error-vocabulary): the seam is wired to the\n"
    "// real implementation, so the declared contract is satisfied against the\n"
    "// shipped code and not against a stub.\n"
)

HAND_ATTESTATION = (
    "// zfa:tdd: contract:{bid}:hand — hand step completed before first red "
    "certification (issue #1411)\n"
)

# The attestation marker as a LINE pattern. The marker records THAT the hand
# step completed, so exactly one copy belongs in the file: a writer that
# appends without dropping the previous copy duplicates it on every run
# (arrrrny/zuraffa#1984).
#
# The pattern is scoped to the behavior id being written: the package also
# ships the unit/acceptance lane's `// zfa:tdd: <id>:hand` marker shape
# (wire_acceptance_002.py), and a broader pattern would silently delete that
# one as well.
def _attestation_line(bid):
    """The hand-step marker LINE pattern for the contract behavior [bid]."""
    return re.compile(
        r"^// zfa:tdd: contract:" + re.escape(bid) + r":hand[^\n]*\n",
        re.M,
    )

# --- unit lane ---------------------------------------------------------------

UNIT_SUBJECTS = {
    "U1": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U1 — a catalog query that fails leaves the
/// subscription store as a `SubscriptionException`.
Future<Object?> subject_u1(List<String> productIds) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: PurchaseException.storeUnavailable('the store is offline'),
    ),
  );
  try {
    await store.fetchProducts(productIds);
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
    "U2": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U2 — a cancelled purchase leaves the subscription
/// store as a `SubscriptionException`.
Future<Object?> subject_u2(subs.PurchaseRequest request) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(failure: PurchaseException.cancelled()),
  );
  try {
    await store.purchase(request);
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
    "U3": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U3 — a restore that fails leaves the subscription
/// store as a `SubscriptionException`.
Future<Object?> subject_u3() async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: PurchaseException.storeUnavailable('the store refused to replay'),
    ),
  );
  try {
    await store.restore();
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
    "U4": """import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U4 — a transaction that cannot be finished leaves the
/// subscription store as a `SubscriptionException`.
Future<Object?> subject_u4(String transactionId) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: PurchaseException.storeUnavailable('the acknowledgement failed'),
    ),
  );
  try {
    await store.finishPurchase(transactionId);
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
    "U5": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U5 — every known purchase-domain code keeps its code
/// across the translation.
Future<List<({String from, String to})>> subject_u5() async {
  const codes = [
    'cancelled',
    'product_unavailable',
    'store_unavailable',
    'pending',
  ];
  final translated = <({String from, String to})>[];
  for (final code in codes) {
    final store = PurchaseSubscriptionStore(
      port: ScriptedPurchasePort(
        failure: PurchaseException(code, 'the $code failure', recoverable: true),
      ),
    );
    Object? raised;
    try {
      await store.purchase(
        const subs.PurchaseRequest(productId: 'pro.monthly'),
      );
    } on Object catch (error) {
      raised = error;
    }
    translated.add((
      from: code,
      to: raised is subs.SubscriptionException ? raised.code : '',
    ));
  }
  return translated;
}
""",
    "U6": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U6 — a purchase-domain failure in a code the port
/// does not know.
Future<Object?> subject_u6(subs.PurchaseRequest request) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: const PurchaseException(
        'teapot',
        'the store answered 418',
        recoverable: false,
      ),
    ),
  );
  try {
    await store.purchase(request);
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
    "U7": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U7 — a failure the purchase domain does not own.
Future<Object?> subject_u7(subs.PurchaseRequest request) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: const FormatException('the store answered with nonsense'),
    ),
  );
  try {
    await store.purchase(request);
  } on Object catch (error) {
    return error;
  }
  return null;
}
""",
}

UNIT_TEST_IMPORTS = {
    "U1": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';\n",
    "U2": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
    "U3": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';\n",
    "U4": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';\n",
    "U5": "",
    "U6": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
    "U7": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
}

UNIT_TEST_BODIES = {
    "U1": """      final error = await subject.subject_u1(const ['pro.monthly']);
      expect(
        error,
        isA<SubscriptionException>(),
        reason: 'the port speaks SubscriptionException, never PurchaseException',
      );
      expect(
        (error! as SubscriptionException).code,
        'store_unavailable',
        reason: 'the machine code survives the translation',
      );
""",
    "U2": """      final error = await subject.subject_u2(
        const subs.PurchaseRequest(productId: 'pro.monthly'),
      );
      expect(
        error,
        isA<subs.SubscriptionException>(),
        reason: 'the port speaks SubscriptionException, never PurchaseException',
      );
      expect(
        (error! as subs.SubscriptionException).code,
        'cancelled',
        reason: 'a cancelled purchase is a cancelled subscription failure',
      );
""",
    "U3": """      final error = await subject.subject_u3();
      expect(
        error,
        isA<SubscriptionException>(),
        reason: 'the port speaks SubscriptionException, never PurchaseException',
      );
      expect(
        (error! as SubscriptionException).code,
        'store_unavailable',
      );
""",
    "U4": """      final error = await subject.subject_u4('tx-1');
      expect(
        error,
        isA<SubscriptionException>(),
        reason: 'the port speaks SubscriptionException, never PurchaseException',
      );
      expect(
        (error! as SubscriptionException).code,
        'store_unavailable',
      );
""",
    "U5": """      final translated = await subject.subject_u5();
      expect(
        {for (final pair in translated) pair.from: pair.to},
        {
          'cancelled': 'cancelled',
          'product_unavailable': 'product_unavailable',
          'store_unavailable': 'store_unavailable',
          'pending': 'pending',
        },
        reason: 'the machine code is what consumers branch on, so it survives '
            'the translation unchanged',
      );
""",
    "U6": """      final error = await subject.subject_u6(
        const subs.PurchaseRequest(productId: 'pro.monthly'),
      );
      expect(error, isA<subs.SubscriptionException>());
      final failure = error! as subs.SubscriptionException;
      expect(
        failure.code,
        'store_unavailable',
        reason: 'an unknown failure is an unavailable store, never a success',
      );
      expect(
        failure.message,
        'the store answered 418',
        reason: 'the original detail survives the boundary',
      );
""",
    "U7": """      final error = await subject.subject_u7(
        const subs.PurchaseRequest(productId: 'pro.monthly'),
      );
      expect(
        error,
        isA<FormatException>(),
        reason: 'only PurchaseException is translated',
      );
      expect(error, isNot(isA<subs.SubscriptionException>()));
      expect(
        (error! as FormatException).message,
        'the store answered with nonsense',
        reason: 'a failure the domain does not own travels untouched',
      );
""",
}

# --- contract lane -----------------------------------------------------------

CONTRACT_SUBJECTS = {
    "A1": """import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? fetchProducts(List<String> arg0) => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(
    catalog: [
      api.CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ),
    ],
  ),
).fetchProducts(arg0);
""",
    "A2": """import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? purchase(dynamic request) => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(),
).purchase(request as subs.PurchaseRequest);
""",
    "A3": """import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? restore() => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(),
).restore();
""",
    "A4": """import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? finishPurchase(dynamic transactionId) =>
    api.PurchaseSubscriptionStore(port: api.ScriptedPurchasePort())
        .finishPurchase(transactionId as String);
""",
}

# The representative argument each contract test hands to the seam. The
# generated scaffold throws UnimplementedError for a `dynamic` param — the
# contract lane is only satisfiable with a real value.
CONTRACT_TEST_ARGS = {
    "A2": """Object? _arg0() => const subs.PurchaseRequest(productId: 'pro.monthly');
""",
    "A4": """Object? _arg0() => 'tx-1';
""",
}

CONTRACT_TEST_EXTRA_IMPORTS = {
    "A2": "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n",
    "A4": "",
}


def write_subject(bid, body, note=NOTE):
    path = SUBJECTS / f"{bid.lower()}_subject.dart"
    text = path.read_text()
    head, _, _tail = text.partition("library;\n")
    path.write_text(head + "library;\n\n" + note + "\n" + body.rstrip() + "\n")


def write_test(bid, body, extra_imports=""):
    path = TESTS / f"{bid.lower()}_test.dart"
    text = path.read_text()
    group = re.search(r"group\(\s*'([^']*)'", text).group(1)
    title = re.search(r"test\(\s*'((?:[^'\\]|\\.)*)'", text).group(1)
    head = re.sub(
        r"^import\b[^;]*;\n",
        "",
        text.partition("void main() {")[0],
        flags=re.M,
    )
    imports = (
        "import 'package:test/test.dart';\n"
        + extra_imports
        + f"import 'package:zuraffa_purchase/tdd/{FEATURE}/"
        f"{bid.lower()}_subject.dart' as subject;\n"
    )
    path.write_text(
        f"{head.rstrip()}\n\n"
        f"{imports}"
        "void main() {\n"
        f"  group('{group}', () {{\n"
        f"    test('{title}', () async {{\n"
        f"{body}"
        "    });\n"
        "  });\n"
        "}\n"
    )


def write_contract_subject(bid):
    path = SUBJECTS / f"contract_{bid.lower()}_subject.dart"
    text = path.read_text()
    head, _, _tail = text.partition("library;\n")
    attestation = HAND_ATTESTATION.format(bid=bid)
    # Idempotent (arrrrny/zuraffa#1984): the marker records THAT the hand
    # step completed, so the subject carries exactly one copy. Drop what a
    # previous run inserted before re-emitting it — otherwise every re-run
    # of the hand step appends another copy and the emitted file looks
    # corrupt.
    head = _attestation_line(bid).sub("", head)
    path.write_text(
        head
        + attestation
        + "library;\n\n"
        + CONTRACT_NOTE
        + "\n"
        + CONTRACT_SUBJECTS[bid].rstrip()
        + "\n"
    )


def write_contract_test(bid):
    path = TESTS / f"contract_{bid.lower()}_test.dart"
    text = path.read_text()
    attestation = HAND_ATTESTATION.format(bid=bid)
    if attestation not in text:
        text = text.replace("library;\n", attestation + "library;\n", 1)
    if bid in CONTRACT_TEST_ARGS:
        text = re.sub(
            r"Object\? _arg0\(\) =>\n?\s*throw UnimplementedError\([^;]*\);",
            CONTRACT_TEST_ARGS[bid].rstrip("\n"),
            text,
        )
        extra = CONTRACT_TEST_EXTRA_IMPORTS[bid]
        if extra and extra not in text:
            text = text.replace(
                "import 'package:test/test.dart';\n",
                "import 'package:test/test.dart';\n" + extra,
                1,
            )
    path.write_text(text)


def main():
    for bid, body in UNIT_SUBJECTS.items():
        write_subject(bid, body)
        write_test(bid, UNIT_TEST_BODIES[bid], UNIT_TEST_IMPORTS[bid])
    for bid in CONTRACT_SUBJECTS:
        write_contract_subject(bid)
        write_contract_test(bid)
    print(
        f"implemented {len(UNIT_SUBJECTS)} unit subjects and "
        f"{len(CONTRACT_SUBJECTS)} contract seams"
    )


if __name__ == "__main__":
    main()
