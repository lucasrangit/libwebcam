# Dockerfile
FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get install -y \ 
    build-essential \
    linux-generic \
    libxml2-dev \
    gengetopt \
    cmake \
    pkg-config

COPY . /code
WORKDIR /code
RUN mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install

