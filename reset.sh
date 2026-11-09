#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "=== Configuring Remote Repositories ==="

# Define remote URLs using GitHub HTTPS endpoints
PEACOCK_URL="https://github.com/xypexw/PeacockXT.git"
SPARKLE_URL="https://github.com/xypexw/Sparkle.git"
MIDNIGHT_URL="https://github.com/xypexw/Midnight.git"
XCELLERATOR_URL="https://github.com/xypexw/Xcellerator.git"

# Add or update remotes
git remote add remote-peacock "$PEACOCK_URL" 2>/dev/null || git remote set-url remote-peacock "$PEACOCK_URL"
git remote add remote-sparkle "$SPARKLE_URL" 2>/dev/null || git remote set-url remote-sparkle "$SPARKLE_URL"
git remote add remote-midnight "$MIDNIGHT_URL" 2>/dev/null || git remote set-url remote-midnight "$MIDNIGHT_URL"
git remote add remote-xcellerator "$XCELLERATOR_URL" 2>/dev/null || git remote set-url remote-xcellerator "$XCELLERATOR_URL"

echo "=== Fetching Latest Changes from Remotes ==="
git fetch remote-peacock main
git fetch remote-sparkle main
git fetch remote-midnight main
git fetch remote-xcellerator main

echo "=== Adding Subtrees ==="
# 1. Import PeacockXTR
echo "Importing PeacockXTR..."
git subtree add --prefix=PeacockXTR remote-peacock main --squash

# 2. Import Sparkle
echo "Importing Sparkle..."
git subtree add --prefix=Sparkle remote-sparkle main --squash

# 3. Import Midnight
echo "Importing Midnight..."
git subtree add --prefix=Midnight remote-midnight main --squash

# 4. Import Xcellerator
echo "Importing Xcellerator..."
git subtree add --prefix=Xcellerator remote-xcellerator main --squash

echo "=== Pushing Monorepo to Origin ==="
git add .
git push origin main

echo "=== Monorepo setup completed successfully! ==="