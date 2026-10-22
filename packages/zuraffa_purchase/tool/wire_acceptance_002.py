#!/usr/bin/env python3
"""Extend the composed acceptance subjects of feature
002-subscription-error-vocabulary with the real scenario.

`zfa tdd compose` writes the skeleton: the anchors are referenced, but the
scenario's outcome is not asserted. The generated header says so — "Extend
the body with real behavior in later cycles".

This script does that hand step for the acceptance lane. The tool's own
prescription for a vacuous-green acceptance pair is the shape implemented
here:

* the subject implements the scenario runner and RETURNS the observable
  outcome;
* the test asserts on that outcome OUTSIDE the capture — the capture is
  the red surface, the assertion is the behavior;
* the test carries the `<id>:hand` attestation header.

The generated header, the group title and the test title are preserved — the
cycle tooling resolves a behavior by its test title.
"""

import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[1]
FEATURE = "002-subscription-error-vocabulary"
SUBJECTS = ROOT / "lib" / "tdd" / FEATURE
TESTS = ROOT / "test" / "tdd" / FEATURE

SUBS_IMPORT = "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;\n"

# The scenarios that name a type from `zuraffa_subscriptions`.
SUBJECT_USES_SUBS = {"A2", "A9", "A10", "A11"}
TEST_USES_SUBS = {"A1", "A2", "A3", "A4", "A9", "A10", "A11"}
TEST_IMPORT = "import 'package:test/test.dart';\n"

# The scenario runner: it drives the green unit anchor and returns the
# observable outcome the acceptance scenario names.
SCENARIOS = {
    "A1": """  return anchor0.subject_u1(const ['pro.monthly']);
""",
    "A2": """  return anchor1.subject_u2(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );
""",
    "A3": """  return anchor2.subject_u3();
""",
    "A4": """  return anchor3.subject_u4('tx-1');
""",
    "A5": """  final translated = await anchor4.subject_u5();
  return translated.firstWhere((pair) => pair.from == 'cancelled').to;
""",
    "A6": """  final translated = await anchor4.subject_u5();
  return translated.firstWhere((pair) => pair.from == 'product_unavailable').to;
""",
    "A7": """  final translated = await anchor4.subject_u5();
  return translated.firstWhere((pair) => pair.from == 'store_unavailable').to;
""",
    "A8": """  final translated = await anchor4.subject_u5();
  return translated.firstWhere((pair) => pair.from == 'pending').to;
""",
    "A9": """  return anchor5.subject_u6(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );
""",
    "A10": """  return anchor5.subject_u6(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );
""",
    "A11": """  return anchor6.subject_u7(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );
""",
}

# The assertion the paired test makes on the observable outcome. Every one of
# them sits OUTSIDE the capture — the capture is the red surface.
ASSERTIONS = {
    "A1": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).code,
        'store_unavailable',
        reason: 'a store that cannot be reached surfaces as the port\\'s own '
            'failure, in the port\\'s own code',
      );
""",
    "A2": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).code,
        'cancelled',
        reason: 'a cancelled purchase is a cancelled subscription failure',
      );
""",
    "A3": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).code,
        'store_unavailable',
        reason: 'a restore that fails surfaces as the port\\'s own failure',
      );
""",
    "A4": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).code,
        'store_unavailable',
        reason: 'a transaction that cannot be finished surfaces as the '
            'port\\'s own failure',
      );
""",
    "A5": """      expect(outcome, 'cancelled');
""",
    "A6": """      expect(outcome, 'product_unavailable');
""",
    "A7": """      expect(outcome, 'store_unavailable');
""",
    "A8": """      expect(outcome, 'pending');
""",
    "A9": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).code,
        'store_unavailable',
        reason: 'an unknown failure is an unavailable store, never a success',
      );
""",
    "A10": """      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).message,
        'the store answered 418',
        reason: 'the original detail survives the boundary',
      );
""",
    "A11": """      expect(
        outcome,
        isA<FormatException>(),
        reason: 'only PurchaseException is translated',
      );
      expect(outcome, isNot(isA<subs.SubscriptionException>()));
""",
}


def attestation(bid):
    return (
        f"// zfa:tdd: {bid}:hand — hand step completed before first red "
        "certification (issue #1411)\n"
    )


def extend_subject(bid):
    path = SUBJECTS / f"{bid.lower()}_subject.dart"
    text = path.read_text()

    # Idempotent: drop what a previous run inserted, then rebuild the body
    # from whatever the composed skeleton currently looks like.
    text = text.replace(SUBS_IMPORT, "").replace(TEST_IMPORT, "")
    text = text.replace(attestation(bid), "")

    marker = f"void subject_{bid.lower()}() {{"
    extended = f"Future<Object?> subject_{bid.lower()}() async {{"
    previous = f"Future<void> subject_{bid.lower()}() async {{"
    for form in (marker, extended, previous):
        if form in text:
            head, _, _tail = text.partition(form)
            break
    else:
        raise SystemExit(f"{path}: no composed skeleton to extend")

    anchors = re.search(
        r"final composedUnitAnchors = <Function>\[(.*?)\];",
        text,
        flags=re.S,
    ).group(1)
    anchors = " ".join(anchors.split())

    # The imports go right after the library directive — the doc comment has
    # to stay attached to the declaration.
    imports = "library;\n\n"
    if bid in SUBJECT_USES_SUBS:
        imports += SUBS_IMPORT
    head = head.replace("library;\n", imports, 1)
    head = head.replace("library;\n", attestation(bid) + "library;\n", 1)
    head = head.rstrip("\n") + "\n"
    body = (
        f"Future<Object?> subject_{bid.lower()}() async {{\n"
        "  // Composition anchor: references the feature's green / entity-wired unit\n"
        "  // subjects this behavior builds on.\n"
        "  // ignore: unused_local_variable\n"
        f"  final composedUnitAnchors = <Function>[{anchors}];\n"
        "\n"
        f"{SCENARIOS[bid]}"
        "}\n"
    )
    path.write_text(head + body)


def rewrite_test(bid):
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
    head = head.replace(attestation(bid), "")
    imports = TEST_IMPORT
    if bid in TEST_USES_SUBS:
        imports += SUBS_IMPORT
    imports += (
        f"import 'package:zuraffa_purchase/tdd/{FEATURE}/"
        f"{bid.lower()}_subject.dart' as subject;\n"
    )
    body = (
        "      final result = (() {\n"
        "        try {\n"
        f"          return subject.subject_{bid.lower()}();\n"
        "        } on UnimplementedError catch (error) {\n"
        "          return error;\n"
        "        }\n"
        "      })();\n"
        "      expect(result, isNot(isA<UnimplementedError>()));\n"
        "      final outcome = await (result as Future<Object?>);\n"
        f"{ASSERTIONS[bid]}"
    )
    head = head.replace("library;\n", attestation(bid) + "library;\n", 1)
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


def main():
    for bid in SCENARIOS:
        extend_subject(bid)
        rewrite_test(bid)
    print(f"extended {len(SCENARIOS)} acceptance subjects")


if __name__ == "__main__":
    main()
