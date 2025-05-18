#!/usr/bin/env bash

set -euo pipefail

for i in {1..10}; do
  git fetch origin merge-queue-state --depth 1
  if git ls-tree --name-only origin/merge-queue-state lock | grep -q 'lock'; then
    echo "State is locked"
  else
    git checkout merge-queue-state
    git pull
    echo "$GITHUB_RUN_ID" > lock
    git add lock
    git commit -m "Locking merge queue state"

    # this will fail if another runner has pushed a lock in the meantime
    if git push; then
      git checkout main
      exit 0
    else
      git reset --hard HEAD~1
    fi
  fi

  sleep 5
done

echo "Failed to get lock on merge state"
exit 1
