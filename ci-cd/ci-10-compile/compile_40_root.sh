#!/usr/bin/env bash
# Hook: Compile entire TypeScript monorepo (unified/root)
# Skips if CI_PACKAGE_PATH is set (sub-package release)
[[ -n "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Compiling all TypeScript workspaces..."
npx tsc --build
echo "TypeScript compilation complete"
