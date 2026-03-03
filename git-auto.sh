#!/usr/bin/env bash

set -e

# Ensure we're inside a git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: Not inside a git repository."
  exit 1
fi

# Ensure there are changes to commit
if [[ -z $(git status --porcelain) ]]; then
  echo "No changes to commit."
  exit 0
fi

# Prompt for commit message
read -rp "Enter commit message: " COMMIT_MSG

if [[ -z "$COMMIT_MSG" ]]; then
  echo "Commit message cannot be empty."
  exit 1
fi

# Get current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo "Adding changes..."
git add .

echo "Committing..."
git commit -m "$COMMIT_MSG"

echo "Pushing to origin/$CURRENT_BRANCH..."
git push origin "$CURRENT_BRANCH"

echo "Done."

