#!/bin/bash
# Certify the green of every unit-lane behavior of feature 001-purchase-store.
# Runs after the subjects are hand-implemented (red-first ordering).
set -u
cd "$(dirname "$0")/.." || exit 1

for b in U2 U3 U4 U5 U6 U7 U8 U9 U10 U11 U12 U13; do
  echo "=== $b"
  zfa tdd verify-red "$b" --re-certify 2>&1 | tail -2
done
echo "UNIT GREENS DONE"
