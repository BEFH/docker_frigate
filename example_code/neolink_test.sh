#!/usr/bin/env bash

# This script can be used to test neolink outside of frigate

ffmpeg -i https://rhasspy.github.io/piper-samples/samples/en/en_US/lessac/high/speaker_0.mp3 -f  alaw -ar 8000 -f wav - | \
  neolink talk doorbell -c /config/neolink.toml --volume=2.0 -m -i "fdsrc fd=0" &> /config/neolink.log