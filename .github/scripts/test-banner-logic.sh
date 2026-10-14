#!/usr/bin/env bash
# Cross-checks pick_theme for every minute of the day against an independent
# table, and checks every scene file exists and is valid XML.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
source .github/scripts/banner-lib.sh

names=(dawn sunrise morning noon afternoon sunset dusk night midnight)
starts=(270 390 570 720 900 1020 1110 1170 1410)      # minutes after 00:00 IST

fail=0
for ((m = 0; m < 1440; m++)); do
  hhmm="$(printf '%02d%02d' $((m / 60)) $((m % 60)))"
  want=midnight
  for i in "${!starts[@]}"; do (( m >= starts[i] )) && want="${names[i]}"; done
  got="$(pick_theme "$hhmm")"
  if [ "$got" != "$want" ]; then echo "MISMATCH $hhmm: got $got, want $want"; fail=1; fi
done

for n in "${names[@]}"; do
  f="assets/banners/${n}.svg"
  if [ ! -s "$f" ]; then echo "MISSING $f"; fail=1; continue; fi
  python3 -c 'import sys, xml.dom.minidom as m; m.parse(sys.argv[1])' "$f" || { echo "INVALID XML $f"; fail=1; }
done

# bad input must be rejected, not silently mapped
for bad in "" "abc" "2460" "2400" "12345"; do
  if pick_theme "$bad" >/dev/null 2>&1; then echo "ACCEPTED bad time '$bad'"; fail=1; fi
done

[ "$fail" -eq 0 ] && echo "All banner logic checks passed (1440 minutes, 9 scenes)."
exit "$fail"
