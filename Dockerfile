FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    software-properties-common

RUN add-apt-repository universe

RUN apt-get update && apt-get install -y \
    curl \
    python3.4 \
    python3-pip

RUN pip3 --version

COPY ./ .

