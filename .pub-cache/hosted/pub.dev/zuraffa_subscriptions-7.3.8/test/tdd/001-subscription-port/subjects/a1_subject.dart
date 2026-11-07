// GENERATED IMPLEMENTATION — `zfa tdd compose A1` (issue
// #642; spec 052-acceptance-make-composition: the acceptance subject is
// composed against the feature's green / entity-wired unit subjects by a
// generation-pipeline step, never by a wrapper or by hand).
//
// behavior_id: A1
// source_criterion: AC-1
// composed against: U1 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u1_subject.dart), U2 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u2_subject.dart), U3 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u3_subject.dart), U4 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u4_subject.dart), U5 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u5_subject.dart), U6 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u6_subject.dart), U7 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u7_subject.dart), U8 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u8_subject.dart), U9 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u9_subject.dart), U10 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u10_subject.dart), U11 (/Users/arrrrny/Developer/zuraffa_subscriptions/lib/tdd/001-subscription-port/u11_subject.dart)
// description: the granted entitlement is owned by the app account and `hasEntitlement` is true for that user only.
//
// This replaces the `zfa tdd gen` stub with the minimal composed
// implementation (spec 047 FR-005): the feature's unit subjects are the
// implementation anchors. An anchor marked [entity-wired] carries only
// the `zfa tdd wire` wiring so far (issue #923) — the composed scenario's
// real green transition lands when those unit subjects are filled with
// business logic in later cycles. Extend the body with real behavior in
// later cycles — the paired test file is immutable (044 ownership).
//
// The subject name is derived from the behavior id (`subject_a1`) and is
// deliberately snake_cased — the generator KNOWS the name it emits, so
// the lint its shape provably trips is suppressed here rather than
// renaming the contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

import 'u1_subject.dart'
    as anchor0;
import 'u2_subject.dart'
    as anchor1;
import 'u3_subject.dart'
    as anchor2;
import 'u4_subject.dart'
    as anchor3;
import 'u5_subject.dart'
    as anchor4;
import 'u6_subject.dart'
    as anchor5;
import 'u7_subject.dart'
    as anchor6;
import 'u8_subject.dart'
    as anchor7;
import 'u9_subject.dart'
    as anchor8;
import 'u10_subject.dart'
    as anchor9;
import 'u11_subject.dart'
    as anchor10;

/// Subject for behavior A1, composed against the
/// feature's unit subject anchors by the generation pipeline.
void subject_a1() {
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
    anchor7.subject_u8,
    anchor8.subject_u9,
    anchor9.subject_u10,
    anchor10.subject_u11,
  ];
}
