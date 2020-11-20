FROM ubuntu:18.04

RUN \
    true \
    \
    && apt update \
    && apt install -y \
        python \
        python-numpy \
        python-matplotlib \
        python-skimage \
    \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
