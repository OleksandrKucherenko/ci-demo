#!/usr/bin/env bash
# Hook: Install npm dependencies for TypeScript monorepo
# Runs before the stub's detection logic

if [ -f "package-lock.json" ]; then
  echo "Installing dependencies with npm ci..."
  npm ci
elif [ -f "package.json" ]; then
  echo "Installing dependencies with npm install..."
  npm install
fi
