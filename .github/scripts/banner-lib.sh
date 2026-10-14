#!/usr/bin/env bash
# Shared logic for the time-of-day banner. Sourced by apply-banner.sh and the tests.

# pick_theme HHMM  ->  prints the scene for that India Standard Time.
#   04:30-06:30 dawn      06:30-09:30 sunrise   09:30-12:00 morning
#   12:00-15:00 noon      15:00-17:00 afternoon 17:00-18:30 sunset
#   18:30-19:30 dusk      19:30-23:30 night     23:30-04:30 midnight
pick_theme() {
  local raw="${1:-}"
  if ! [[ "$raw" =~ ^[0-9]{3,4}$ ]]; then
    echo "pick_theme: bad time '$raw' (expected HHMM)" >&2
    return 2
  fi
  local n=$((10#$raw))
  if (( n / 100 > 23 || n % 100 > 59 )); then
    echo "pick_theme: out-of-range time '$raw'" >&2
    return 2
  fi
  if   (( n >= 430  && n < 630  )); then echo dawn
  elif (( n >= 630  && n < 930  )); then echo sunrise
  elif (( n >= 930  && n < 1200 )); then echo morning
  elif (( n >= 1200 && n < 1500 )); then echo noon
  elif (( n >= 1500 && n < 1700 )); then echo afternoon
  elif (( n >= 1700 && n < 1830 )); then echo sunset
  elif (( n >= 1830 && n < 1930 )); then echo dusk
  elif (( n >= 1930 && n < 2330 )); then echo night
  else echo midnight
  fi
}

# ist_hhmm -> current India time as HHMM (NOW_HHMM overrides it, for tests).
ist_hhmm() { echo "${NOW_HHMM:-$(TZ=Asia/Kolkata date +%H%M)}"; }
