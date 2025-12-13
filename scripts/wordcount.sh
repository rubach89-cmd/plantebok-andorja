#!/usr/bin/env bash
set -euo pipefail
# Teller ord i alle markdown-filer i book/
find book -type f -name "*.md" -print0 | xargs -0 wc -w | sort -n
