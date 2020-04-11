FROM python:3.8.2

LABEL maintainer "mats16 <mats.kazuki@gmail.com>"

RUN apt-get update && \
    apt-get install -y mecab=0.996-3.1 \
                       libmecab-dev=0.996-3.1 \
                       mecab-ipadic-utf8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install mecab-python3==0.996.5
