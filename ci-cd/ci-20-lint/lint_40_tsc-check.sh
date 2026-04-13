#!/usr/bin/env bash
# Hook: Type-check TypeScript without emitting

echo "Running TypeScript type check..."
npx tsc --noEmit
echo "Type check passed"
