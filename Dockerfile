FROM pahud/n2n-docker
RUN yum install dhclient -y
HEALTHCHECK --interval=60s --timeout=10s \
    CMD ping $N2N_NODE -c5 || exit 1
