#!/bin/bash
set -ex

# linux-${KERNEL_VERSION}-x86.tar

tar -xf /source/dist/kernel/linux-${KERNEL_VERSION}-x86.tar.gz  ./boot/vmlinuz-${KERNEL_VERSION} ./boot/System.map-${KERNEL_VERSION}
mv ./boot/vmlinuz-${KERNEL_VERSION} ./images/10-kernel/kernel
mv ./boot/System.map-${KERNEL_VERSION} ./images/10-kernel/System.map
rmdir boot

cp /source/dist/kernel/linux-${KERNEL_VERSION}-x86.tar.gz ./images/10-kernel/kernel.tar.gz
gunzip -f ./images/10-kernel/kernel.tar.gz

ls -lah ./images/10-kernel
