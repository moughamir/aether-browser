#!/bin/bash

# Aether Browser - Firefox Build Infrastructure Setup Script
# This script sets up the essential Firefox build infrastructure using git

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "🔥 Setting up Firefox build infrastructure for Aether Browser..."
echo "Project root: $PROJECT_ROOT"

# Check if git is available
if ! command -v git &> /dev/null; then
    echo "❌ Git is required but not installed. Please install git first."
    exit 1
fi

# Create a temporary directory for cloning
TEMP_DIR=$(mktemp -d)
echo "Using temporary directory: $TEMP_DIR"

cd "$TEMP_DIR"

echo "📥 Cloning Firefox build infrastructure (this may take a few minutes)..."

# Clone mozilla-central with minimal depth to get build infrastructure
git clone --depth 1 https://github.com/mozilla/gecko-dev.git firefox-source

cd firefox-source

echo "📋 Copying essential build files to Aether Browser..."

# Copy essential build infrastructure
if [ -d "build" ]; then
    echo "Copying build system..."
    cp -r build "$PROJECT_ROOT/"
fi

if [ -d "python" ]; then
    echo "Copying Python build tools..."
    cp -r python "$PROJECT_ROOT/"
fi

if [ -d "tools" ]; then
    echo "Copying build tools..."
    cp -r tools "$PROJECT_ROOT/"
fi

# Copy mach and configuration files
if [ -f "mach" ]; then
    echo "Copying mach build script..."
    cp mach "$PROJECT_ROOT/"
    chmod +x "$PROJECT_ROOT/mach"
fi

if [ -f "moz.configure" ]; then
    echo "Copying moz.configure..."
    cp moz.configure "$PROJECT_ROOT/"
fi

if [ -f "configure.py" ]; then
    echo "Copying configure.py..."
    cp configure.py "$PROJECT_ROOT/"
fi

# Copy essential configuration directories
for dir in config; do
    if [ -d "$dir" ]; then
        echo "Copying $dir..."
        cp -r "$dir" "$PROJECT_ROOT/"
    fi
done

# Clean up
echo "🧹 Cleaning up temporary files..."
cd "$PROJECT_ROOT"
rm -rf "$TEMP_DIR"

echo "✅ Firefox build infrastructure setup complete!"
echo ""
echo "Next steps:"
echo "1. Run: ./mach bootstrap --application-choice=browser"
echo "2. Configure your build with: ./mach configure"
echo "3. Build Aether Browser with: ./mach build"