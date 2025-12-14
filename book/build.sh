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

  # Alle plantemonografier (sortert numerisk)
  plants/02-gulrot.md
  plants/06-rodbete.md
  plants/09-gronnkal.md
  plants/13-potet.md
  plants/14-reddik.md
  plants/15-kinakal.md
  plants/18-hvitlok.md
  plants/26-bygg.md
  plants/28-bokhvete.md
  plants/29-varlok.md
  plants/30-ruccola.md
  plants/31-salat.md
  plants/32-spinat.md
  plants/33-dill.md
  plants/34-purre.md
  plants/35-oregano.md
  plants/36-mynte.md
  plants/37-sitronmelisse.md
  plants/38-erter.md
  plants/39-persille.md
  plants/40-karve.md
  plants/41-kvann.md
  plants/43-basilikum.md
  plants/47-rips.md
  plants/48-jordbaer.md
  plants/49-solbaer.md
  plants/50-stikkelbaer.md
  plants/51-tindved.md
  plants/52-hageblabar.md
  plants/53-tyttebaer.md
  plants/60-sotmispel.md
  plants/66-einer.md
  plants/69-rogn.md
  plants/72-lopstikke.md
  plants/75-blomsterkarse.md
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
