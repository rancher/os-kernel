#!/bin/bash
set -e
set -x

cp /source/dist/kernel/extra-linux-${KERNEL_VERSION}-x86.tar.gz ./images/10-extras/extras.tar.gz

