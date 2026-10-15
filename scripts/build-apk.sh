#!/bin/bash
# Build Delara APK using Docker
# Usage: bash scripts/build-apk.sh
set -e
cd "$(dirname "$0")/.."
mkdir -p output
echo "=== Building Delara APK with Docker ==="
docker build -t delara-builder -f Dockerfile.build .
docker run --rm -v "$(pwd)/output:/output" delara-builder
echo "=== Done! ==="
echo "APK: output/delara-debug.apk"
ls -lh output/delara-debug.apk 2>/dev/null
