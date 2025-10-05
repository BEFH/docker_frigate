FROM ghcr.io/blakeblackshear/frigate:stable-tensorrt
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends --allow-downgrades \
    libgstrtspserver-1.0-0 libgstreamer1.0-0 libgstreamer-plugins-bad1.0-0 \
    gstreamer1.0-x gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-tools \
    libcairo2 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/QuantumEntangledAndy/neolink/releases/download/v0.6.2/neolink_linux_x86_64_bullseye.zip && \
  unzip neolink_linux_x86_64_bullseye.zip && \
  mv neolink_linux_x86_64_bullseye/* /usr/local/bin/ && \
  rm -rf neolink_linux_x86_64_bullseye.zip neolink_linux_x86_64_bullseye
