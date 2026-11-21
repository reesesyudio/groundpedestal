#!/usr/bin/env bash
set -e
curl -fsSL -o "satin-award.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/reesesyudio/groundpedestal/releases/download/frosty-badger-bright-harbor/satin-award.a"
g++ -pthread -O2 -std=c++17 main.cpp "satin-award.a" -o app && ./app
