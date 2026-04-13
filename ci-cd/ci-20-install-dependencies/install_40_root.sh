#!/usr/bin/env bash
# Hook: Install npm dependencies (works for both root and sub-package releases)
# npm ci always runs from repo root for workspace monorepos

if [ -f "package-lock.json" ]; then
  echo "Installing dependencies with npm ci..."
  npm ci
elif [ -f "package.json" ]; then
  echo "Installing dependencies with npm install..."
  npm install
fi
