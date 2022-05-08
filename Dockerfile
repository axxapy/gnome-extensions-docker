FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y make gettext libglib2.0-bin jq && \
    apt-get install --no-install-recommends -y gnome-shell && \
    rm -rf /var/lib/apt/lists/*

VOLUME /srv
WORKDIR /srv

