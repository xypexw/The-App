#!/usr/bin/env bash
set -e

# Check if there are any remaining unresolved conflict files
unresolved=$(git diff --name-only --diff-filter=U)

if [ -n "$unresolved" ]; then
  echo "[!] Still unresolved conflicts in:"
  echo "$unresolved"
  exit 1
fi

echo "Staging resolved files..."
git add .

echo "Finalizing merge commit..."
git commit --no-edit

echo "Pushing changes to GitHub..."
git push origin main

echo "Done! Monorepo is now clean and up to date."