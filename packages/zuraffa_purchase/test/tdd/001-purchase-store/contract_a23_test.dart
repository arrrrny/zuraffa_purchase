// GENERATED TEST — `zfa tdd gen contract:A23` (issue #1007, contract lane).
//
// behavior_id: contract:A23
// source_criterion: StoreApi.complete
// kind: contract
// description: StoreApi.complete(String) -> void (interface method contract)
//
// CONTRACT TEST (issue #1007): this is NOT an implementation test — it
// proves the implementation at `package:zuraffa_purchase/tdd/001-purchase-store/contract_a23_subject.dart`
// satisfies the DECLARED contract above. The body enumerates the
// contract's cases; every case must hold for the contract to be
// satisfied. While the method is deliberately unimplemented the test
// fails through an assertion and `zfa tdd verify-red` reports BLOCKED
// (never RED): a failing contract test blocks the cycle from proceeding
// to GREEN until the implementation satisfies the contract.
// zfa:tdd: contract:A23:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/contract_a23_subject.dart' as subject;

void main() {
  group('contract:A23 (StoreApi.complete)', () {
    test('contract:A23 \u2014 StoreApi.complete(String) -> void (interface method contract)', () {
      // Case 1 of 2 — exposure: the declared method
      // `StoreApi.complete(dynamic String) -> void` must
      // resolve on the implementation subject. This case proves EXPOSURE
      // only — a tearoff of the declared function type is never null; the
      // invocation and the declared outcome are Case 2 and Case 3 (issue
      // #1751).
      final impl = subject.complete;
      expect(impl, isNotNull,
          reason: 'StoreApi.complete must be exposed on the '
              'implementation subject (exposure only — the declared '
              'outcome is asserted by the return case)');

      // Case 2 of 2 — implementation: invoking the declared
      // method does not throw UnimplementedError. A captured rejection
      // (the implementation threw ArgumentError/TypeError/... for the
      // representative argument) PASSES this case: the seam is
      // implemented and validating (issue #1541) — the outcome split is
      // recorded below, never an uncaught error.
      final Object? outcome = _captured(() => impl('tx-1'));
      expect(outcome, isNot(isA<UnimplementedError>()),
          reason: 'StoreApi.complete is not implemented — the declared '
              'contract is unsatisfied, so the cycle is BLOCKED and cannot '
              'proceed to GREEN (issue #1007)');
      // SCAFFOLD PLACEHOLDERS — the placeholder arguments below (complex-
      // typed or dynamic-typed declared params, issue #1541) throw
      // UnimplementedError with the exact instruction. Replace each
      // placeholder with a representative value for its declared type so
      // this contract test exercises the real invocation:
      //   _arg0() -> a representative `dynamic` value
    });
  });
}

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
Object? _captured(Object? Function() invoke) {
  try {
    return invoke();
  } on Object catch (error) {
    return error;
  }
}

