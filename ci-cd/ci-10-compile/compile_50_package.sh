#!/usr/bin/env bash
# Hook: Compile single TypeScript package (sub-package release)
# Skips if CI_PACKAGE_PATH is empty (root/unified release)
[[ -z "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Compiling ${CI_PACKAGE_PATH}..."
npx tsc --build "${CI_PACKAGE_PATH}/tsconfig.json"
echo "Package compilation complete"
