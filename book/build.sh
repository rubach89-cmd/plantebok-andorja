#!/usr/bin/env bash
set -euo pipefail

COMMON_FILES=(
  metadata.yaml
  01-introduksjon.md
  02-klima-og-vaer.md
  03-jord-og-ph.md
  04-vind-og-salt.md
  05-hagedesign-og-systemer.md
  06-aarsjul-kalender.md
  06b-aarsjul-grafisk.md
  07-gode-tips.md
  08-vann-og-naering.md
  09-integrert-plantevern.md
  10-hosting-lagring-fermentering.md
  11-oppskrifter.md
  20-traer-og-busker.md
  23-case-studier.md
  24-kart-mikroklima.md
  25-vedlegg-klimavurdering.md
  26-vedlegg-arsjul-matrise.md
  27-vedlegg-frokilder.md
  27b-vedlegg-lover-og-regler.md
  27c-vedlegg-utstyr.md
  28-ordliste.md
  29-register.md

  # Utvalgte planter (kan utvides videre)
  plants/13-potet.md
  plants/09-gronnkal.md
  plants/18-hvitlok.md
  plants/02-gulrot.md
  plants/06-rodbete.md
  plants/33-dill.md
  plants/35-oregano.md
  plants/41-kvann.md
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
