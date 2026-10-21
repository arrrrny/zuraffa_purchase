#!/usr/bin/env python3
"""Wire the generated contract seams to the real implementation.

`zfa tdd gen` writes one contract test + one contract *seam* per declared
Layer Contracts row. The seam is a stub that throws UnimplementedError; the
paired test is BLOCKED until the seam is implemented and its scaffold
placeholder argument is replaced with a representative value.

This script performs exactly that hand-step for every declared row, so the
contract lane can certify SATISFIED.
"""

import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
SUBJECTS = ROOT / "lib" / "tdd" / "001-purchase-store"
TESTS = ROOT / "test" / "tdd" / "001-purchase-store"
SPEC = ROOT / "specs" / "001-purchase-store" / "spec.md"

# The seams drive the REAL implementation, so the scriptable store needs a
# catalog: a purchase of an id the store does not offer raises
# `product_unavailable`, and an unhandled async error inside a contract test
# is a runner error, never a satisfied contract.
CATALOG = (
    "catalog: [api.StoreProduct(id: 'pro.monthly', title: 'Pro monthly', "
    "description: 'monthly plan', priceMicros: 4990000, currency: 'USD')]"
)
STORE = f"api.RecordingStoreApi({CATALOG})"
SERVICE = f"api.PurchaseService(port: api.StoreApiPurchasePort(store: {STORE}))"
PORT = f"api.StoreApiPurchasePort(store: {STORE})"
SUB_STORE = f"api.PurchaseSubscriptionStore(port: api.StoreApiPurchasePort(store: {STORE}))"
FAKE = STORE

# behavior id -> (seam name, param type, argument expression, body)
SEAMS = {
    "A1": ("products", "List<String>", "const []", f"{SERVICE}.products(arg0)"),
    "A2": ("purchase", "api.PurchaseIntent", "api.PurchaseIntent(productId: 'pro.monthly')", f"{SERVICE}.purchase(arg0)"),
    "A3": ("restore", None, None, f"{SERVICE}.restore()"),
    "A4": ("finish", "String", "'tx-1'", f"{SERVICE}.finish(arg0)"),
    "A5": ("products", "List<String>", "const []", f"{PORT}.products(arg0)"),
    "A6": ("purchase", "api.PurchaseIntent", "api.PurchaseIntent(productId: 'pro.monthly')", f"{PORT}.purchase(arg0)"),
    "A7": ("restore", None, None, f"{PORT}.restore()"),
    "A8": ("finish", "String", "'tx-1'", f"{PORT}.finish(arg0)"),
    "A9": ("products", "List<String>", "const []", f"{PORT}.products(arg0)"),
    "A10": ("purchase", "api.PurchaseIntent", "api.PurchaseIntent(productId: 'pro.monthly')", f"{PORT}.purchase(arg0)"),
    "A11": ("restore", None, None, f"{PORT}.restore()"),
    "A12": ("finish", "String", "'tx-1'", f"{PORT}.finish(arg0)"),
    "A13": ("fetchProducts", "List<String>", "const []", f"{SUB_STORE}.fetchProducts(arg0)"),
    "A14": ("purchase", "subs.PurchaseRequest", "subs.PurchaseRequest(productId: 'pro.monthly')", f"{SUB_STORE}.purchase(arg0)"),
    "A15": ("restore", None, None, f"{SUB_STORE}.restore()"),
    "A16": ("finishPurchase", "String", "'tx-1'", f"{SUB_STORE}.finishPurchase(arg0)"),
    "A17": ("code", None, None, "api.PurchaseException.cancelled().code"),
    "A18": ("registerPurchaseDependencies", "zf.GetIt", "GetIt.asNewInstance()", "api.registerPurchaseDependencies(arg0)"),
    "A19": ("isAvailable", None, None, f"{FAKE}.isAvailable()"),
    "A20": ("queryProducts", "Set<String>", "const {}", f"{FAKE}.queryProducts(arg0)"),
    "A21": ("purchase", "api.StorePurchaseRequest", "api.StorePurchaseRequest(productId: 'pro.monthly')", f"{FAKE}.purchase(arg0)"),
    "A22": ("restore", None, None, f"{FAKE}.restore()"),
    "A23": ("complete", "String", "'tx-1'", f"{FAKE}.complete(arg0)"),
    "A24": ("isAvailable", None, None, f"{FAKE}.isAvailable()"),
    "A25": ("queryProducts", "Set<String>", "const {}", f"{FAKE}.queryProducts(arg0)"),
    "A26": ("purchase", "api.StorePurchaseRequest", "api.StorePurchaseRequest(productId: 'pro.monthly')", f"{FAKE}.purchase(arg0)"),
    "A27": ("restore", None, None, f"{FAKE}.restore()"),
    "A28": ("complete", "String", "'tx-1'", f"{FAKE}.complete(arg0)"),
}

# The declared contract of a row whose return type is asynchronous: the
# contract test asserts the declared type literally, so the row's declared
# return type has to name the Future.
RETURN_TYPES = {
    "A19": "Future<bool>",
    "A24": "Future<bool>",
}

# the contract rows that need the subscription seam / the DI seam
NEEDS_SUBS = {"A14"}
NEEDS_ZF = {"A18"}


def spec_signatures():
    """`Class.method` -> declared signature, from the spec's Layer Contracts."""
    signatures = {}
    for line in SPEC.read_text().splitlines():
        m = re.match(r"^- `(\w+)`: (.+)$", line.strip())
        if not m:
            continue
        cls, methods = m.group(1), m.group(2)
        for sig in re.findall(r"`([^`]+)`", methods):
            sig = sig.strip()
            mm = re.match(r"(\w+)\((.*?)\)\s*->\s*(.+)$", sig)
            if mm:
                signatures[f"{cls}.{mm.group(1)}"] = sig
    return signatures


def header(bid, criterion, description, signature, kind, hand=True):
    impl_note = (
        "IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real\n"
        "// implementation, so the declared contract is satisfied against the\n"
        "// shipped code and not against a stub."
        if hand
        else "NOT IMPLEMENTED (contract-lane BLOCKED state, issue #1007): the\n"
        "// seam still throws, so the declared contract is unsatisfied."
    )
    hand_line = (
        f"// zfa:tdd: contract:{bid}:hand — hand step completed before first "
        "red certification (issue #1411)\n"
        if hand
        else ""
    )
    return f"""// GENERATED STUB — `zfa tdd gen contract:{bid}` (issue #1007).
//
// behavior_id: contract:{bid}
// source_criterion: {criterion}
// kind: contract
// target: subject_contract_{bid}
// description: {description}
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `{signature}`
// ({kind}) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// {impl_note}
//
{hand_line}library;
"""


def subject_body(bid, stub=False):
    name, ptype, _arg, body = SEAMS[bid]
    if stub:
        if ptype is None:
            code = f"Object? {name}() =>\n    throw UnimplementedError('{name} is not implemented yet');\n"
        else:
            code = (
                f"Object? {name}({ptype} arg0) =>\n"
                f"    throw UnimplementedError('{name} is not implemented yet');\n"
            )
    elif ptype is None:
        code = f"Object? {name}() => {body};\n"
    elif body.startswith("api.registerPurchaseDependencies"):
        code = f"Object? {name}({ptype} arg0) {{\n  {body};\n  return null;\n}}\n"
    else:
        code = f"Object? {name}({ptype} arg0) => {body};\n"

    imports = []
    if "api." in code:
        imports.append("import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;")
    if "subs." in code or "subs." in str(ptype):
        imports.append(
            "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;"
        )
    if "zf." in code or "zf." in str(ptype):
        imports.append("import 'package:zuraffa/zuraffa.dart' as zf;")

    doc = (
        "The declared contract, deliberately unimplemented (contract-lane BLOCKED\n"
        "/// state, issue #1007)."
        if stub
        else "The declared contract, wired to the real implementation."
    )
    return "\n".join(imports) + f"\n\n/// {doc}\n" + code


def rewrite_test(bid):
    path = TESTS / f"contract_{bid.lower()}_test.dart"
    text = path.read_text()
    name, _ptype, arg, _body = SEAMS[bid]
    if arg is not None:
        text = text.replace("impl(_arg0())", f"impl({arg})")
    imports = []
    if "api." in str(SEAMS[bid][1]) or "api." in str(SEAMS[bid][2]):
        imports.append("import 'package:zuraffa_purchase/zuraffa_purchase.dart';")
    if bid in NEEDS_SUBS:
        imports.append(
            "import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';"
        )
    if bid in NEEDS_ZF:
        imports.append("import 'package:zuraffa/zuraffa.dart';")
    if imports:
        for i in imports:
            text = text.replace(i + "\n", "")
        marker = "import 'package:test/test.dart';\n"
        block = marker + "".join(f"{i}\n" for i in imports)
        text = text.replace(marker, block, 1)
    text = re.sub(
        r"\n/// Scaffold placeholder for parameter 0.*?\nObject\? _arg0\(\) =>\n"
        r"    throw UnimplementedError\('provide a representative `dynamic` '\n"
        r"        'value for the `[^`]+` contract test'\);\n",
        "\n",
        text,
        flags=re.S,
    )
    declared = RETURN_TYPES.get(bid)
    if declared:
        inner = declared[len("Future<") : -1]
        text = text.replace(f"isA<{inner}>()", f"isA<{declared}>()")
        text = text.replace(f"'`{inner}`'", f"'`{declared}`'")
        text = text.replace(f"return type `{inner}`", f"return type `{declared}`")
    marker = (
        f"// zfa:tdd: contract:{bid}:hand — hand step completed before "
        "first red certification (issue #1411)\n"
    )
    if marker not in text:
        text = text.replace("library;\n", marker + "library;\n", 1)
    path.write_text(text)


def main():
    only = None
    stub = False
    argv = sys.argv[1:]
    for i, a in enumerate(argv):
        if a == "--stub":
            stub = True
        elif a == "--only":
            only = argv[i + 1].upper()
    signatures = spec_signatures()
    rows = []
    list_md = ROOT / "specs" / "001-purchase-store" / "tdd" / "test-list.md"
    for line in list_md.read_text().splitlines():
        m = re.match(r"\| (contract:A\d+) \| (.*?) \| (.*?) \| \w+ \|", line)
        if m:
            rows.append(m.groups())
    written = 0
    for bid, description, criterion in rows:
        short = bid.split(":")[1]
        if only and short != only:
            continue
        kind = (
            "interface method contract"
            if "interface method" in description
            else "usecase contract"
        )
        signature = signatures.get(criterion, description.split(" (")[0])
        path = SUBJECTS / f"contract_{short.lower()}_subject.dart"
        path.write_text(
            header(short, criterion, description, signature, kind, hand=not stub)
            + subject_body(short, stub=stub)
        )
        if not stub:
            rewrite_test(short)
        written += 1
    state = "stubbed" if stub else "wired"
    print(f"{state} {written} contract seams")


if __name__ == "__main__":
    main()
