FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y git libnetfilter-queue-dev \
    libnfnetlink-dev redis-server libhiredis-dev iptables \
    libev-dev python-redis python-scapy make netcat && \
    git clone https://github.com/wrfly/INTANG.git /build && \
    cd /build && \
    make -j4
WORKDIR /build
CMD [ "/build/run.sh" ]
