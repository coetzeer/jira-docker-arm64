#!/bin/bash

set -x -o errexit -o pipefail

REPO="coetzeer/jira"
JIRA_VERSION="9.5.0"
MYSQL_DRIVER_VERSION="5.1.49"
# tini is a small helper library for Docker containers https://github.com/krallin/tini
# It makes sense to update.
TINI_VERSION="v0.19.0"

docker build \
  --no-cache \
  -t "$REPO:$JIRA_VERSION-arm64" \
  --build-arg JIRA_VERSION="$JIRA_VERSION" \
  --build-arg MYSQL_DRIVER_VERSION="$MYSQL_DRIVER_VERSION" \
  --build-arg TINI_VERSION="$TINI_VERSION" \
  .