#!/usr/bin/env bash
set -euo pipefail

# Bygg PDF (A5) og ePub med Pandoc + TinyTeX XeLaTeX
COMMON_FILES=(
  metadata.yaml
  00-frontmatter.md
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
  templates/plant-profil.md

  # Utvalgte monografier (alle tidligere inkluderes i repo)
  plants/13-potet.md
  plants/03-kalrot.md
  plants/46-solbaer.md
  plants/08-spinat.md
  plants/09-gronnkal.md
  plants/43-jordbaer.md
  plants/49-aronia.md
  plants/18-hvitlok.md
  plants/16-lok.md
  plants/19-purre.md
  plants/47-rips.md
  plants/48-stikkelsbaer.md
  plants/50-haskap.md
  plants/45-bringebaer.md
  plants/70-rabarbra.md
  plants/33-dill.md
  plants/35-oregano.md
  plants/41-kvann.md
  plants/10-hodekal.md
  plants/11-brokkoli.md
  plants/12-blomkal.md
  plants/06-rodbete.md
  plants/02-gulrot.md
  plants/04-nepe.md
  plants/05-pastinakk.md
  plants/25-bondebonner.md
  plants/22-hageerter.md
  plants/23-sukkererter.md
  plants/14-pak-choi.md
  plants/15-kinakal.md
  plants/07-bladbete.md
  plants/30-ruccola.md
  plants/31-varsalat.md
  plants/17-sjalottlok.md
  plants/20-sellerirot.md
  plants/72-lopstikke.md
  plants/71-isop.md
  plants/74-ringblomst.md
  plants/53-tyttebaer.md
  plants/54-blabaer.md
  plants/60-sotmispel.md
  plants/51-tindved.md
  plants/52-hageblabar.md
  plants/36-mynte.md
  plants/34-timian.md
  plants/40-karve.md
  plants/39-koriander.md
  plants/37-sitronmelisse.md
  plants/24-brekkbonner.md
  plants/26-bygg.md
  plants/27-havre.md
  plants/28-bokhvete.md
  plants/32-bladpersille.md
  plants/66-einer.md
  plants/67-skvallerkal.md
  plants/68-borrerot.md
  plants/69-rogn.md
  plants/21-gresslok.md
  plants/29-varlok.md
  plants/42-ramslok.md
  plants/75-blomsterkarse.md

  # Vedlegg, case, kart, utstyr, ordliste, register
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

  # Illustrasjoner (SVG) – referert i kapitler
  images/kalender-andorja.svg
  images/kart-mikroklima-andorja.svg
  images/hevet-bed-snitt.svg
  images/lavtunnel.svg
  images/dryppvanning-oppsett.svg
  images/vind-salt-skjerm-sjikt.svg

  # Redaksjonelle verktøy
  STYLEGUIDE.md
  29-omfang-og-sidetallsplan.md
  QA-sjekkliste.md
  CHANGELOG.md
)

# PDF
pandoc \
  "${COMMON_FILES[@]}" \
  -o ../Plantebok-Andorja-Igeland.pdf \
  --from markdown --pdf-engine=xelatex --toc --toc-depth=3

# ePub
pandoc \
  "${COMMON_FILES[@]}" \
  -o ../Plantebok-Andorja-Igeland.epub \
  --from markdown --toc --toc-depth=3