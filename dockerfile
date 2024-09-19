FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN which pip3
RUN pip3 --version

RUN pip3 install PyYaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
