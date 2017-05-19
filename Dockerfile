FROM ubuntu:16.10
MAINTAINER Uwe Kaiser <uwe.kaiser@brel.ch>

RUN apt-get update &&  apt-get install  -y \
    build-essential \
    cmake \ 
    doxygen \
    git \
    lcov \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 
