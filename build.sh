#!/bin/bash
# Build the GEO Audit blog and resolve symlinks for GitHub Pages
set -e

echo "Building site..."
swift run

echo "Resolving symlinks in docs/..."
# Replace any symlinks with actual files (GitHub Pages can't follow symlinks)
find docs -type l | while read link; do
    target=$(readlink "$link")
    if [ -f "$target" ]; then
        rm "$link"
        cp "$target" "$link"
        echo "  Resolved: $link"
    fi
done

echo "Done. Site ready in docs/"
