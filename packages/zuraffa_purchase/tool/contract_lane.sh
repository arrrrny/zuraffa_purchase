#!/bin/bash
# Certify the contract lane of feature 001-purchase-store.
#
# Per contract behavior:
#   1. stub the seam            -> the declared contract is unsatisfied
#   2. zfa tdd verify-red       -> BLOCKED receipt (contract lane never RED)
#   3. re-wire the seam         -> the declared contract is satisfied
#   4. zfa tdd make --born-green-> green evidence bound to the current subject
set -u
cd "$(dirname "$0")/.." || exit 1

for n in $(seq 1 28); do
  A="A$n"
  echo "=== contract:$A"
  python3 tool/wire_contract_seams.py --stub --only "$A"
  zfa tdd verify-red "contract:$A" 2>&1 | tail -2
  python3 tool/wire_contract_seams.py --only "$A"
  zfa tdd make "contract:$A" --born-green 2>&1 | tail -2
done
echo "CONTRACT LANE DONE"
