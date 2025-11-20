#!/usr/bin/env bash
# Aether Browser Bootstrap Script
# Downloads Firefox source and sets up the build environment

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
FIREFOX_VERSION="131.0.3"  # Latest stable version

echo "🧭 Aether Browser Bootstrap"
echo "=========================="

cd "$PROJECT_ROOT"

# Check if we already have Firefox source
if [ -f "mach" ] && [ -d "browser" ]; then
    echo "✅ Firefox source already present"
else
    echo "📥 Downloading Firefox source code..."
    
    # Create temporary directory for download
    TEMP_DIR=$(mktemp -d)
    cd "$TEMP_DIR"
    
    # Download Firefox source
    echo "Downloading Firefox $FIREFOX_VERSION source..."
    wget -q "https://archive.mozilla.org/pub/firefox/releases/$FIREFOX_VERSION/source/firefox-$FIREFOX_VERSION.source.tar.xz"
    
    echo "Extracting Firefox source..."
    tar -xf "firefox-$FIREFOX_VERSION.source.tar.xz"
    
    # Move source files to project root
    echo "Moving source files..."
    cd "firefox-$FIREFOX_VERSION"
    
    # Copy all files except those we want to keep from our scaffold
    rsync -av --exclude='.git' --exclude='README.md' --exclude='LICENSE' \
          --exclude='branding/aether' --exclude='scripts' --exclude='defaults' \
          --exclude='mozconfig' . "$PROJECT_ROOT/"
    
    cd "$PROJECT_ROOT"
    rm -rf "$TEMP_DIR"
    
    echo "✅ Firefox source downloaded and extracted"
fi

# Make scripts executable
chmod +x scripts/*.sh

# Set up Python environment for mach
echo "🐍 Setting up Python environment..."
if command -v python3 &> /dev/null; then
    python3 -m pip install --user --upgrade pip
else
    echo "❌ Python 3 is required but not found"
    exit 1
fi

# Run mach bootstrap
echo "🔧 Running mach bootstrap..."
if [ -f "mach" ]; then
    ./mach bootstrap --application-choice=browser --no-interactive
else
    echo "❌ mach not found. Firefox source may not have been downloaded correctly."
    exit 1
fi

echo ""
echo "✅ Aether Browser bootstrap complete!"
echo ""
echo "Next steps:"
echo "  1. Run: ./scripts/build.sh"
echo "  2. Run: ./scripts/run-dev.sh"
echo ""