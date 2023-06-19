FROM ubuntu:23.10
RUN \
  apt-get update && \
  apt-get install -y \
    remmina \
    remmina-plugin-exec \
    remmina-plugin-rdp \
    xvfb \
    x11vnc && \
  apt-get clean && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

ENV DISPLAY=:1
ENV DISPLAY_SETTINGS=1024x768x24
ENV CONNECT_URL=rdp://localhost
ENV KNOWN_HOSTS=NONE

ADD run.sh /run.sh

CMD /run.sh
