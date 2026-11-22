#!/usr/bin/env bash
set -e
REPO="sashengsaner/cobaltsheet"
LIB="saffron-servo.a"
URL="https://github.com/${REPO}/releases/download/cosmic-garden-bright-forest/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
