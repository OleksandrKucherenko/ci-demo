#!/usr/bin/env bash
# Hook: Build and push Docker image for a single package (sub-package release)
# Skips if CI_PACKAGE_PATH is empty (root/unified release)
[[ -z "${CI_PACKAGE_PATH:-}" ]] && exit 0

VERSION="${CI_VERSION:-latest}"
PKG_NAME=$(basename "${CI_PACKAGE_PATH}")
IMAGE="ghcr.io/${GITHUB_REPOSITORY:-local/ci-demo}/${PKG_NAME}"

echo "Building ${IMAGE}:${VERSION} from ${CI_PACKAGE_PATH}"
docker build -t "${IMAGE}:${VERSION}" -f "${CI_PACKAGE_PATH}/Dockerfile" "${CI_PACKAGE_PATH}" 2>/dev/null \
  || docker build -t "${IMAGE}:${VERSION}" --build-arg "PACKAGE=${CI_PACKAGE_PATH}" .
docker push "${IMAGE}:${VERSION}"
echo "Docker image published"
