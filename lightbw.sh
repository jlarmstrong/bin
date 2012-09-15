#!/bin/bash
# ###################################################
# Gives us bandwidth numbers w/ lighttpd access file.
#
# ###################################################
cat "$1" | awk '{
month=substr($4,5,3)
year= substr($4,9,4)
timstamp=year" "month
bytes[timstamp] += $10
} END {
for (date in bytes)
printf("%s %20d MB\n", date, bytes[date]/(1024*1024))
}' | sort -k1n -k2M
