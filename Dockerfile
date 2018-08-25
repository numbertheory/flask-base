FROM ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV FLASK_APP=app.py

RUN apt-get update && apt-get install -y \
    software-properties-common

RUN add-apt-repository universe

RUN apt-get update && apt-get install -y \
    curl \
    python3.4 \
    python3-pip

RUN pip3 install flask

COPY ./ .

ENTRYPOINT ["flask", "run"]
