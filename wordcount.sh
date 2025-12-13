#!/usr/bin/env bash
set -euo pipefail

# Teller ord per fil og summerer per kategori
# Krever: bash, coreutils (wc, awk, sed)

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "Ord-telling for Markdown-filer i ${ROOT_DIR}"
echo

# Liste alle .md under book/, ekskluder images- og templates-bilder etc.
mapfile -t FILES < <(find "${ROOT_DIR}" -maxdepth 2 -type f -name "*.md" ! -path "*/images/*" ! -path "*/.git/*")

total=0
printf "%-40s %10s\n" "Fil" "Ord"
printf "%-40s %10s\n" "----------------------------------------" "----------"
for f in "${FILES[@]}"; do
  words=$(wc -w < "$f" | tr -d ' ')
  printf "%-40s %10d\n" "$(basename "$f")" "$words"
  total=$((total + words))
done
printf "%-40s %10s\n" "----------------------------------------" "----------"
printf "%-40s %10s\n" "SUM" "$total"

echo
echo "Estimert sider (A5, ~250 ord/side): $(( (total + 249) / 250 )) sider"
echo "Estimert sider (A5, ~275 ord/side): $(( (total + 274) / 275 )) sider"