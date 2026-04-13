#!/usr/bin/env bash
# Hook: Run tests across all npm workspaces using Node built-in test runner

echo "Running tests across workspaces..."
npm test --workspaces --if-present
echo "All workspace tests complete"
