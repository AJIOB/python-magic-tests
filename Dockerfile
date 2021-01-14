FROM ubuntu:14.04

RUN \
    true \
    \
    && apt update \
    && apt install -y \
        python \
        python-numpy \
        python-matplotlib \
        python-skimage \
        python-opencv \
        python-pip \
    \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN \
    true \
    \
    && python -m pip install --upgrade pip \
    \
    && true