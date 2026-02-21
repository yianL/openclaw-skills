#!/bin/bash
# Download sheet music from MuseScore
# Usage: download.sh <musescore-url>

set -e

URL="$1"

if [ -z "$URL" ]; then
    echo "❌ Usage: download.sh <musescore-url>"
    exit 1
fi

# Ensure output directory exists
OUTPUT_DIR="$HOME/Documents/musicsheets"
mkdir -p "$OUTPUT_DIR"

# Activate venv and run downloader
cd ~/projects/musescore-dl
source .venv/bin/activate

echo "🎼 Downloading from: $URL"
echo "📁 Output: $OUTPUT_DIR"

DISPLAY=:99 python musescore_dl.py "$URL" --output-dir "$OUTPUT_DIR"

echo ""
echo "✅ Sheet music saved to: $OUTPUT_DIR"
ls -la "$OUTPUT_DIR"/*.pdf 2>/dev/null | tail -5
