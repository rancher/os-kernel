#!/bin/bash
set -e

cd $(dirname $0)

dapper make

ls -lh dist/kernel
