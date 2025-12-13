#!/usr/bin/env bash
set -euo pipefail

# Minimal build for Batch 1 (we will expand in Batch 2/3)
COMMON_FILES=(
  toc.md
  06b-aarsjul-grafisk.md
)

# PDF
pandoc \
  "${COMMON_FILES[@]}" \
  -o ../Plantebok-Andorja-Igeland.pdf \
  --from markdown --pdf-engine=xelatex --toc --toc-depth=2

# ePub
pandoc \
  "${COMMON_FILES[@]}" \
  -o ../Plantebok-Andorja-Igeland.epub \
  --from markdown --toc --toc-depth=2
