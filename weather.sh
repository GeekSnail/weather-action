#!/bin/sh

set -eux

CITY=`echo -n "$LOC" | xxd -ps | tr -d '\n' | sed -r 's/(..)/%\1/g'`
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 Chrome/79.0 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://wttr.in/$CITY
