#!/usr/bin/env bash
# Provenance for sewells_point_hourly.csv (BEE 4850 HW1).
# NOAA CO-OPS station 8638610, Sewells Point VA. Hourly water level, MSL datum, GMT.
# Public domain. Rebuilds the file from source; ~97 calls, a few minutes.
set -euo pipefail
mkdir -p .raw
for y in $(seq 1928 2024); do
  [ -s ".raw/$y.csv" ] || curl -s -m 30 \
    "https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?product=hourly_height&application=BEE4850&begin_date=${y}0101&end_date=${y}1231&datum=MSL&station=8638610&time_zone=GMT&units=metric&format=csv" \
    -o ".raw/$y.csv"
done
{ echo "date,time_gmt,water_level_m"
  for y in $(seq 1928 2024); do
    tail -n +2 ".raw/$y.csv" | awk -F, 'NF>1 && $2!="" && $2!="-" {split($1,d," "); print d[1]","d[2]","$2}'
  done
} > sewells_point_hourly.csv
echo "wrote sewells_point_hourly.csv ($(wc -l < sewells_point_hourly.csv) lines)"
