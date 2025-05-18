#!/usr/bin/env bash

set -euo pipefail

git checkout merge-queue-state
rm lock
git add lock
git commit -m "Unlocking merge queue state"
git push

git checkout main
