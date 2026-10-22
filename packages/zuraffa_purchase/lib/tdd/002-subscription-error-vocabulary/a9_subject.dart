// GENERATED IMPLEMENTATION — `zfa tdd compose A9` (issue
// #642; spec 052-acceptance-make-composition: the acceptance subject is
// composed against the feature's green / entity-wired unit subjects by a
// generation-pipeline step, never by a wrapper or by hand).
//
// behavior_id: A9
// source_criterion: AC-9
// composed against: U1 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u1_subject.dart), U2 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u2_subject.dart), U3 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u3_subject.dart), U4 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u4_subject.dart), U5 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u5_subject.dart), U6 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u6_subject.dart), U7 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/002-subscription-error-vocabulary/u7_subject.dart)
// description: the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.
//
// This replaces the `zfa tdd gen` stub with the minimal composed
// implementation (spec 047 FR-005): the feature's unit subjects are the
// implementation anchors. An anchor marked [entity-wired] carries only
// the `zfa tdd wire` wiring so far (issue #923) — the composed scenario's
// real green transition lands when those unit subjects are filled with
// business logic in later cycles. Extend the body with real behavior in
// later cycles — the paired test file is immutable (044 ownership).
//
// The subject name is derived from the behavior id (`subject_a9`) and is
// deliberately snake_cased — the generator KNOWS the name it emits, so
// the lint its shape provably trips is suppressed here rather than
// renaming the contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
// zfa:tdd: A9:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;

import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u1_subject.dart'
    as anchor0;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u2_subject.dart'
    as anchor1;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u3_subject.dart'
    as anchor2;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u4_subject.dart'
    as anchor3;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u5_subject.dart'
    as anchor4;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u6_subject.dart'
    as anchor5;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u7_subject.dart'
    as anchor6;

/// Subject for behavior A9, composed against the
/// feature's unit subject anchors by the generation pipeline.
Future<Object?> subject_a9() async {
  // Composition anchor: references the feature's green / entity-wired unit
  // subjects this behavior builds on.
  // ignore: unused_local_variable
  final composedUnitAnchors = <Function>[
    anchor0.subject_u1,
    anchor1.subject_u2,
    anchor2.subject_u3,
    anchor3.subject_u4,
    anchor4.subject_u5,
    anchor5.subject_u6,
    anchor6.subject_u7,
  ];

  return anchor5.subject_u6(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );
}
