#!/usr/bin/env bash
set -e
echo "🔧 Bootstrapping Aether Browser build environment..."

cd "$(dirname "$0")/.."

if [ ! -d "obj-x86_64-pc-linux-gnu" ]; then
  ./mach bootstrap --application-choice=browser
fi

./mach configure

export LD=mold
./mach build -j$(nproc)

echo "✅ Build complete! Run with ./scripts/run-dev.sh"
