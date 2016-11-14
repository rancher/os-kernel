#!/bin/bash
set -e
set -x

cp /source/dist/kernel/build-linux-${KERNEL_VERSION}-x86.tar.gz ./images/10-headers/build.tar.gz

