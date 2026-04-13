#!/usr/bin/env bash
# Hook: Publish all NPM packages (unified/root release)
# Skips if CI_PACKAGE_PATH is set (sub-package release)
[[ -n "${CI_PACKAGE_PATH:-}" ]] && exit 0

TAG="${CI_NPM_TAG:---tag latest}"

echo "Publishing all workspace packages..."
for pkg in packages/*/; do
  [ -f "$pkg/package.json" ] || continue
  name=$(node -p "require('./$pkg/package.json').name" 2>/dev/null || echo "")
  [ -n "$name" ] && echo "  Publishing $name" && npm publish "$pkg" $TAG --access public 2>&1 || true
done
echo "All packages published"
