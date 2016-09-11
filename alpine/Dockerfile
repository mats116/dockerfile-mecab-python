FROM python:2.7.12-alpine

ADD mecab-0.996.tar.gz /tmp

WORKDIR /tmp/mecab-0.996

RUN apk add --no-cache build-base && \
    ./configure && \
    make && \
    make check && \
    make install && \
    rm -rf /tmp/mecab-0.996 && \
    pip install mecab-python==0.996

WORKDIR /
