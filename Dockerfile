FROM weakiwi/n2n_docker
RUN yum install dhclient -y
#HEALTHCHECK --interval=60s --timeout=10s \
#    CMD ping $N2N_NODE -c5 || exit 1
RUN mkdir -p /workdir
COPY entrypoint.sh /workdir
RUN chmod +x /workdir/entrypoint.sh
ENTRYPOINT ["/workdir/entrypoint.sh"]
