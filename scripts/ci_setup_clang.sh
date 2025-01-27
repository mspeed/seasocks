#!/bin/bash

VERSION=$1

apt update
apt-get install -y libc++-${VERSION}-dev libc++abi-${VERSION}-dev

if [[ ${VERSION} -ge 12 ]]; then
    apt-get install -y --no-install-recommends libunwind-${VERSION}-dev
fi
