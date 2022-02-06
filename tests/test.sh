#!/usr/bin/env bash

set -e
set -u
set -o pipefail

IMAGE="${1:-devilbox/php-fpm-8.2}"
ARCH="${2:-linux/amd64}"

docker run --rm --platform "${ARCH}" --entrypoint=php "${IMAGE}" -v | grep -E '^PHP 8\.2'
docker run --rm --platform "${ARCH}" --entrypoint=php-fpm "${IMAGE}" -v | grep -E '^PHP 8\.2'
