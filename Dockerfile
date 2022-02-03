FROM ubuntu:20.04

# prevents asking for timezone
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y install python3-pip texlive-full wget \
    && pip3 install \
    pandoc-secnos \
    pandoc-fignos \
    pandoc-tablenos \
    && rm -rf /var/lib/apt/lists/*

RUN TEMP_DEB="$(mktemp)" \
    && wget -O "$TEMP_DEB" https://github.com/jgm/pandoc/releases/download/2.17.1.1/pandoc-2.17.1.1-1-amd64.deb \
    && dpkg -i "$TEMP_DEB" \
    && rm "$TEMP_DEB"
