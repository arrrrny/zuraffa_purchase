#!/bin/bash
# Certify the honest red of every unit-lane behavior of feature 001-purchase-store.
# Must run BEFORE the subjects are hand-implemented (red-first ordering).
set -u
cd "$(dirname "$0")/.." || exit 1

for b in A11 U2 U3 U4 U5 U6 U7 U8 U9 U10 U11 U12 U13; do
  echo "=== $b"
  zfa tdd verify-red "$b" 2>&1 | tail -2
done
echo "UNIT REDS DONE"
