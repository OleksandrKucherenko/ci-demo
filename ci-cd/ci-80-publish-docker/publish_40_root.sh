#!/usr/bin/env bash
# Hook: Build and push Docker image (unified/root release)
# Skips if CI_PACKAGE_PATH is set (sub-package release)
[[ -n "${CI_PACKAGE_PATH:-}" ]] && exit 0

VERSION="${CI_VERSION:-latest}"
IMAGE="ghcr.io/${GITHUB_REPOSITORY:-local/ci-demo}"

echo "Building ${IMAGE}:${VERSION}"
docker build -t "${IMAGE}:${VERSION}" -t "${IMAGE}:latest" .
docker push "${IMAGE}:${VERSION}"
docker push "${IMAGE}:latest"
echo "Docker image published"
