FROM ubuntu:18.04
MAINTAINER Uwe Kaiser <uwe.kaiser@brel.ch>

RUN    apt-get update \
    && apt-get install -y \
        software-properties-common \
        wget \
    && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && echo "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main" > /etc/apt/sources.list.d/llvm.list \
    && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
    && apt-get update \
    && apt-get install  -y \
        build-essential \
        cmake \ 
        doxygen \
        git \
        lcov \
        python3 \
        ninja-build \
        clang-7 \
        clang-tools-7 \
        clang-format-7 \
        clang-tidy-7 \
        gcc-8 \
        g++-8 \
        qt5-default \
        qtdeclarative5-dev \
        qtdeclarative5-dev-tools \
        libboost-dev \
        libudev-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 
