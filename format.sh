#!/usr/bin/env bash

set -ex

FORMAT="clang-format"

if [ -f /usr/local/bin/clang-format ]; then
    FORMAT="/usr/local/bin/clang-format"
fi

echo "clang-format starting ..."

sleep 1

find ./src/ -type f -name "*.c" | xargs $FORMAT -i
find ./src/ -type f -name "*.cc" | xargs $FORMAT -i
find ./src/ -type f -name "*.h" | xargs $FORMAT -i

echo "clang-format finished!"
