#!/usr/bin/env bash

# Place this in the /config directory of your frigate container and make executable

ffmpeg -fflags nobuffer -f alaw -ar 8000 -i - -f wav - | \
  neolink talk doorbell -c /config/neolink.toml --volume=2.0 -m -i "fdsrc fd=0" &> /config/neolink.log