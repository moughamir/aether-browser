#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
./mach run --no-remote -P aether-dev
