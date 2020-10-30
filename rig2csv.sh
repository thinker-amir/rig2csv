#!/bin/bash

default_number=1
default_separator=","

for i in "$@"; do
  case $i in
  -n=* | --number=*)
    INPUT_NUMBER="${i#*=}"
    ;;
  -s=* | --separator=*)
    INPUT_SEPARATOR=${i#*=}
    ;;
  *)
    # unknown option
    ;;
  esac
done

NUMBER=${INPUT_NUMBER:-$default_number}
SEPARATOR=${INPUT_SEPARATOR:-$default_separator}

echo "first_name${SEPARATOR}last_name${SEPARATOR}street_number${SEPARATOR}address${SEPARATOR}area_code"
counter=0
while [ $counter -lt $NUMBER ]; do
  rig | awk -v separator="${SEPARATOR}" \
    'NR == 1 { printf "%s%s%s%s",$1,separator,$2,separator } \
	 NR == 2 { printf "%s%s",$0,separator} \
	 NR == 3 {printf "\"%s\"%s",$0,separator} \
	 NR == 4 {printf "%s\n",$0}'
  counter=$((counter + 1))
done
