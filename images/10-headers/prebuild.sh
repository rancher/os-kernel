#!/bin/bash
set -e
set -x

cp /source/dist/kernel/build-linux-${KERNEL_VERSION}-${KERNEL_ARCH}.tar.gz ./images/10-headers/build.tar.gz

