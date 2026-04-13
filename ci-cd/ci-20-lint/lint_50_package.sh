#!/usr/bin/env bash
# Hook: Type-check single TypeScript package (sub-package release)
[[ -z "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Running TypeScript type check for ${CI_PACKAGE_PATH}..."
npx tsc --noEmit -p "${CI_PACKAGE_PATH}/tsconfig.json"
echo "Package type check passed"
