#!/usr/bin/env bash
set -euo pipefail

COMMON_FILES=(
  metadata.yaml
  toc.md
  06-aarsjul-kalender.md
  06b-aarsjul-grafisk.md
  plants/13-potet.md
  plants/09-gronnkal.md
  plants/18-hvitlok.md
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
