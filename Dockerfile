FROM ubuntu:18.04

WORKDIR /workspace

RUN apt update && \
    apt install -y amule amule-daemon && \
    amuled -f

ADD amule.conf /root/.aMule/amule.conf

RUN amulecmd --create-config-from=/root/.aMule/amule.conf

ENTRYPOINT "/bin/bash"
