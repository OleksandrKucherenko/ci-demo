#!/usr/bin/env bash
# Hook: Compile TypeScript monorepo using project references

echo "Compiling TypeScript workspaces..."
npx tsc --build
echo "TypeScript compilation complete"
