FROM registry.opensuse.org/opensuse/leap:16.0

RUN zypper refresh && zypper install -y \
    bash \
    curl \
    jq \
    fio \
    iperf3 \
    sysbench \
    stress-ng \
    sysstat \
    iproute2 \
    procps \
    util-linux \
    ethtool \
    iputils \
    bind-utils \
    && zypper clean -a

WORKDIR /runner

COPY benchmarks.sh /benchmarks.sh

RUN chmod +x /benchmarks.sh

ENTRYPOINT ["/benchmarks.sh"]
