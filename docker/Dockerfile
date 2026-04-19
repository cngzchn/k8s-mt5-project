FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install Wine and Xvfb
RUN apt-get update && apt-get install -y \
    wine64 \
    xvfb \
    wget \
    unzip \
    && apt-get clean

# Environment for Headless Wine
ENV DISPLAY=:1
ENV WINEPREFIX=/mt5/.wine
ENV WINEARCH=win64

WORKDIR /mt5

# Copy your working MT5 files from Fedora into the Image
COPY ./mt5 /mt5/

# Copy the startup script
COPY ./scripts/start-mt5.sh /start-mt5.sh
RUN chmod +x /start-mt5.sh

CMD ["/bin/bash", "/start-mt5.sh"]