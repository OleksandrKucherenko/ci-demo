#!/usr/bin/env bash
# Hook: Run tests across all workspaces (unified/root)
[[ -n "${CI_PACKAGE_PATH:-}" ]] && exit 0

echo "Running tests across workspaces..."
npm test --workspaces --if-present
echo "All workspace tests complete"
