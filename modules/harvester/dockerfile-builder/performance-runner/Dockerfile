FROM registry.opensuse.org/opensuse/leap:16.0@sha256:6a8998a33df6164d29d545c1bb8d9dd5a3595206d993b1a43c54de9aa33d8feb

RUN zypper refresh && zypper install -y \
    bash \
    curl \
    jq \
    fio \
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
