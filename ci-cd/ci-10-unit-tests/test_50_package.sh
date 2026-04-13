#!/usr/bin/env bash
# Hook: Run tests for single package (sub-package release)
[[ -z "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Running tests in ${CI_PACKAGE_PATH}..."
npm test --workspace "${CI_PACKAGE_PATH}" --if-present
echo "Package tests complete"
