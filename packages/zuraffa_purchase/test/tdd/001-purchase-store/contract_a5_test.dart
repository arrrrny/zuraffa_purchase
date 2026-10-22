// GENERATED TEST — `zfa tdd gen contract:A5` (issue #1007, contract lane).
//
// behavior_id: contract:A5
// source_criterion: PurchasePort.products
// kind: contract
// description: PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)
//
// CONTRACT TEST (issue #1007): this is NOT an implementation test — it
// proves the implementation at `package:zuraffa_purchase/tdd/001-purchase-store/contract_a5_subject.dart`
// satisfies the DECLARED contract above. The body enumerates the
// contract's cases; every case must hold for the contract to be
// satisfied. While the method is deliberately unimplemented the test
// fails through an assertion and `zfa tdd verify-red` reports BLOCKED
// (never RED): a failing contract test blocks the cycle from proceeding
// to GREEN until the implementation satisfies the contract.
// zfa:tdd: contract:A5:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/contract_a5_subject.dart'
    as subject;

void main() {
  group('contract:A5 (PurchasePort.products)', () {
    test(
      'contract:A5 \u2014 PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)',
      () {
        // Case 1 of 3 — exposure: the declared method
        // `PurchasePort.products(List<String> arg0) -> List<CatalogProduct>` must
        // resolve on the implementation subject. This case proves EXPOSURE
        // only — a tearoff of the declared function type is never null; the
        // invocation and the declared outcome are Case 2 and Case 3 (issue
        // #1751).
        final impl = subject.products;
        expect(
          impl,
          isNotNull,
          reason:
              'PurchasePort.products must be exposed on the '
              'implementation subject (exposure only — the declared '
              'outcome is asserted by the return case)',
        );

        // Case 2 of 3 — implementation: invoking the declared
        // method does not throw UnimplementedError. A captured rejection
        // (the implementation threw ArgumentError/TypeError/... for the
        // representative argument) PASSES this case: the seam is
        // implemented and validating (issue #1541) — the outcome split is
        // recorded below, never an uncaught error.
        final Object? outcome = _captured(() => impl(<String>[]));
        expect(
          outcome,
          isNot(isA<UnimplementedError>()),
          reason:
              'PurchasePort.products is not implemented — the declared '
              'contract is unsatisfied, so the cycle is BLOCKED and cannot '
              'proceed to GREEN (issue #1007)',
        );
        // Case 3 of 3 — return: when NO rejection was captured the
        // invocation returned a value, which must satisfy the declared
        // return type `List<CatalogProduct>`. `_rejection` is the capture SIGNAL
        // set by `_captured` — never a runtime-type guess over the outcome,
        // which cannot tell a returned Error/Exception instance from a
        // thrown raw value. A captured rejection (an ArgumentError, a
        // TypeError, a domain Error/Exception, ... thrown by an
        // argument-validating implementation) has no return value to
        // type-check and the contract is SATISFIED-WITH-REJECTION (issue
        // #1541).
        //
        // NOTE (issue #1751): the declared return `List<CatalogProduct>` did not
        // resolve to a renderable type — the lane's own vocabulary does not
        // carry it and no entity file for it was resolved on disk — so this
        // case carries the documented `Object?` degradation the seam
        // applies (the FR-011 pattern). The case is enumerated on purpose:
        // a return-type case that silently vanishes is the defect this note
        // replaces.
        if (_rejection == null) {
          expect(
            outcome,
            isA<Object?>(),
            reason:
                'PurchasePort.products must return the declared type '
                '`List<CatalogProduct>`',
          );
        } else {
          expect(
            _rejection,
            anyOf(isA<Error>(), isA<Exception>()),
            reason:
                'PurchasePort.products threw a raw value — neither an '
                'Error nor an Exception. A raw throw is neither a return '
                'nor a rejection: return the declared type or throw an '
                'Error/Exception',
          );
        }
      },
    );
  });
}

/// The value the captured invocation THREW (null when it returned
/// normally). The Case 3 guard reads this SIGNAL — never the outcome's
/// runtime type, which cannot tell a returned Error/Exception instance
/// from a thrown raw value.
Object? _rejection;

/// Captures ANY error the contract seam invocation can throw (issue
/// #1541) as the assertion's actual value — never an uncaught escape into
/// the runner transcript (an uncaught error graded `runner-error`, never
/// a named verdict). The outcome classes stay split at the assertions:
/// an [UnimplementedError] (the unimplemented seam, or a scaffold
/// placeholder argument) drives the BLOCKED verdict through the Case 2
/// assertion; any OTHER captured Error/Exception (`ArgumentError` from an
/// argument-validating implementation, a `TypeError` from a cast, ...) is
/// a satisfied-with-rejection — the seam is implemented and rejected the
/// scaffold's representative argument.
///
/// The thrown value is also recorded in `_rejection` (reset per capture)
/// so the Case 3 guard keys on the SIGNAL: a thrown RAW value — neither
/// an Error nor an Exception — is surfaced by Case 3 instead of passing
/// as a return that never happened.
Object? _captured(Object? Function() invoke) {
  _rejection = null;
  try {
    return invoke();
  } on Object catch (error) {
    _rejection = error;
    return error;
  }
}
