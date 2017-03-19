FROM python:2.7.12-alpine

LABEL maintainer "mats116 <mats.kazuki@gmail.com>"

ADD mecab-0.996.tar.gz /tmp

RUN apk add --no-cache build-base && \
    cd /tmp/mecab-0.996 && \
        ./configure && \
        make && \
        make check && \
        make install && \
    cd / && \
    rm -rf /tmp/mecab-0.996 && \
    pip install mecab-python==0.996
