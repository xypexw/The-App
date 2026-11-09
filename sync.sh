#!/usr/bin/env bash

# Helper: Open editor for conflicted files
handle_conflict() {
  local repo_name="$1"
  echo ""
  echo "=========================================================="
  echo " [!] CONFLICT DETECTED in subtree: $repo_name"
  echo "=========================================================="
  
  # Find all unmerged (conflicted) files
  conflict_files=$(git diff --name-only --diff-filter=U)

  if [ -n "$conflict_files" ]; then
    echo "Found conflicted files:"
    echo "$conflict_files"
    echo ""
    echo "Launching editor to resolve conflicts..."

    # Prefer opening with Cursor / VS Code / Sublime / Notepad
    for file in $conflict_files; do
      if command -v code >/dev/null 2>&1; then
        code -r "$file"
      elif command -v cursor >/dev/null 2>&1; then
        cursor -r "$file"
      elif command -v subl >/dev/null 2>&1; then
        subl "$file"
      else
        notepad "$file"
      fi
    done

    echo ""
    echo "Steps to finish:"
    echo " 1. Resolve merge conflicts in the opened files."
    echo " 2. Run: git add ."
    echo " 3. Run: git commit"
    echo " 4. Run: git push origin main"
  else
    echo "Pull failed due to a non-conflict error. Check terminal output above."
  fi

  exit 1
}

echo "=== Pulling updates for all subtrees ==="

# 1. PeacockXTR
echo "--> Syncing PeacockXTR..."
git subtree pull --prefix=PeacockXTR remote-peacock main --squash -m "chore: sync PeacockXTR" || handle_conflict "PeacockXTR"

# 2. Sparkle
echo "--> Syncing Sparkle..."
git subtree pull --prefix=Sparkle remote-sparkle main --squash -m "chore: sync Sparkle" || handle_conflict "Sparkle"

# 3. Midnight
echo "--> Syncing Midnight..."
git subtree pull --prefix=Midnight remote-midnight main --squash -m "chore: sync Midnight" || handle_conflict "Midnight"

# 4. Xcellerator
echo "--> Syncing Xcellerator..."
git subtree pull --prefix=Xcellerator remote-xcellerator main --squash -m "chore: sync Xcellerator" || handle_conflict "Xcellerator"

echo "=== Pushing to origin main ==="
git push origin main

echo "All repos successfully synced and pushed!"