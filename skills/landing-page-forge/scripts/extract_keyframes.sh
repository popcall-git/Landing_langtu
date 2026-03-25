#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <video-path> <output-dir> [fps]" >&2
  exit 1
fi

VIDEO_PATH="$1"
OUTPUT_DIR="$2"
FPS="${3:-1/2}"

mkdir -p "$OUTPUT_DIR"

ffmpeg -hide_banner -loglevel error -y \
  -i "$VIDEO_PATH" \
  -vf "fps=${FPS},scale='min(1600,iw)':-2" \
  "$OUTPUT_DIR/frame-%03d.jpg"

echo "Extracted frames to: $OUTPUT_DIR"
