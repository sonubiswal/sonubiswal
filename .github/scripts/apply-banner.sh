#!/usr/bin/env bash
# Idempotent: makes assets/header.svg (and the README cache-buster) match the
# current IST time. Safe to run any number of times. Does NOT commit or push.
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"
# shellcheck source=banner-lib.sh
source .github/scripts/banner-lib.sh

ist="$(ist_hhmm)"
theme="$(pick_theme "$ist")"
echo "IST ${ist} -> scene '${theme}'"

# Use the wanted scene if its file is present, non-empty and valid XML.
# Otherwise fall back to 'sunset' so the profile never shows a broken image.
applied=""
for cand in "$theme" sunset; do
  f="assets/banners/${cand}.svg"
  if [ -s "$f" ] && python3 -c 'import sys, xml.dom.minidom as m; m.parse(sys.argv[1])' "$f" 2>/dev/null; then
    applied="$cand"
    break
  fi
  echo "::warning title=Banner unusable::${f} is missing, empty, or not valid XML"
done
if [ -z "$applied" ]; then
  echo "::error title=No usable banner::neither '${theme}' nor 'sunset' could be used; header left untouched"
  exit 1
fi
[ "$applied" != "$theme" ] && echo "Using fallback scene '${applied}'"

cp -f "assets/banners/${applied}.svg" assets/header.svg

changed=no
if [ -n "$(git status --porcelain -- assets/header.svg)" ]; then
  changed=yes
  v="$(date +%s)"
  if grep -qE 'src="assets/header\.svg(\?v=[0-9]+)?"' README.md; then
    # Only the <img src="..."> attribute; the file-list comment is left alone.
    sed -i -E "s|src=\"assets/header\.svg(\?v=[0-9]+)?\"|src=\"assets/header.svg?v=${v}\"|" README.md
    echo "Cache-buster set to ?v=${v}"
  else
    echo "::warning title=No cache-buster::README has no <img src=\"assets/header.svg\"> tag to version"
  fi
fi

echo "THEME=${applied}"  > "${RUNNER_TEMP:-/tmp}/banner.env"
echo "IST=${ist}"       >> "${RUNNER_TEMP:-/tmp}/banner.env"
echo "CHANGED=${changed}" >> "${RUNNER_TEMP:-/tmp}/banner.env"
echo "Banner changed: ${changed}"
