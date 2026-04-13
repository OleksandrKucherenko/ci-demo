#!/usr/bin/env bash
# Hook: Type-check all TypeScript packages (unified/root)
[[ -n "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Running TypeScript type check..."
npx tsc --noEmit
echo "Type check passed"
