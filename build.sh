#!/bin/bash
set -e

cd $(dirname $0)

# Build for amd64 (x86_64)
ARCH=amd64 dapper

# Build for arm64 (aarch64)
#ARCH=arm64 dapper

ls -lh dist/kernel
