FROM ghcr.io/blakeblackshear/frigate:stable-tensorrt
RUN apt-get update && \
  apt-get install \
    libgstrtspserver-1.0-0 libgstreamer1.0-0 libgstreamer-plugins-bad1.0-0 \
    gstreamer1.0-x gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad libssl wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  wget https://github.com/QuantumEntangledAndy/neolink/releases/download/v0.6.2/neolink_linux_x86_64_bullseye.zip && \
  unzip neolink_linux_x86_64_bullseye.zip && \
  mv neolink_linux_x86_64_bullseye/* /usr/local/bin/ && \
  rm -rf neolink_linux_x86_64_bullseye.zip neolink_linux_x86_64_bullseye
