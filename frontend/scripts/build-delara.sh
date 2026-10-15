#!/bin/bash
# Build Delara with exercise images
set -e
cd "$(dirname "$0")/.."

echo "=== Building Delara frontend ==="
npm run build

echo "=== Copying exercise media ==="
mkdir -p dist/exercise-media/still dist/exercise-media/clip
cp ../catalogue/media/still/*.webp dist/exercise-media/still/
cp ../catalogue/media/clip/*.mp4 dist/exercise-media/clip/
echo "  Stills: $(ls dist/exercise-media/still/ | wc -l)"
echo "  Clips:  $(ls dist/exercise-media/clip/ | wc -l)"

echo "=== Done ==="
echo "dist/ is ready. Serve with: npx serve dist"
