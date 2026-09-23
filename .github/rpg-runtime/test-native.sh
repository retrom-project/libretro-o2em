#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)
cd "$root"
make -j4 platform=unix >/dev/null
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
cc -O1 -g -o "$work/savestate" tests/savestate_determinism.c -Ilibretro-common/include -ldl
"$work/savestate" ./o2em_libretro.so
cc -O1 -g -o "$work/lifecycle" tests/lifecycle.c -Ilibretro-common/include -ldl
"$work/lifecycle" ./o2em_libretro.so cycles 3
