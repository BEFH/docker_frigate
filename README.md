# Neolink+frigate Docker Container

This repository maintains a combined Neolink+frigate Docker container that tracks
the official [frigate](https://github.com/blakeblackshear/frigate) container at
`docker://ghcr.io/blakeblackshear/frigate:stable.` as well as the `tensorrt` and
`standard-arm64` versions.

This is based on the instructions [in this thread.](https://github.com/blakeblackshear/frigate/discussions/11924).

Other versions of frigate may be added later. Every time the upstream container is
updated, this repository updates the container at `docker://befh/frigate:latest` and
`docker://befh/frigate:stable`, `docker://befh/frigate:latest-tensorrt` and
`docker://befh/frigate:stable-tensorrt`, and also `docker://befh/frigate:latest-standard-arm64` and
`docker://befh/frigate:stable-standard-arm64`.

# Usage

All example code is for the `tensorrt` version.

You can place the files in `example_code` in your frigate `/config` folder, run
`chmod +x /config/*.sh`, and replace all instances of `IP_ADDRESS` and `PASS` in
`config.yml` and `neolink.toml` with the IP address and password of your doorbell
camera.

Test neolink by running `neolink_test.sh` to play a sound file on the doorbell.

Once neolink is working, you can add a card to Home Assistant Lovelace by copying
the contents of `card.yml`.