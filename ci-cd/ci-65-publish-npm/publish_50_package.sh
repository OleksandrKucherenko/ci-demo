#!/usr/bin/env bash
# Hook: Publish single NPM package (sub-package release)
# Skips if CI_PACKAGE_PATH is empty (root/unified release)
[[ -z "${CI_PACKAGE_PATH:-}" ]] && exit 0

TAG="${CI_NPM_TAG:---tag latest}"

echo "Publishing ${CI_PACKAGE_PATH}..."
cd "${CI_PACKAGE_PATH}"
npm publish . $TAG --access public
echo "Package published"
