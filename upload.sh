#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file>" >&2
    exit 1
fi

if [[ ! -f "$1" ]]; then
    echo "Error: '$1' is not a valid file." >&2
    exit 1
fi

python -m mpremote connect port:/dev/ttyUSB0 fs cp "$1" :main.py + reset