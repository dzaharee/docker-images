FROM dzaharee/ubuntu-vivid-nightly:2015-08-15

RUN apt-get install -qy sudo && \
    echo 'Defaults env_keep -= "HOME"' >> /etc/sudoers && \
    echo 'dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN useradd -m dev && \
    mkdir /home/dev/workdir && \
    chown dev:dev /home/dev/workdir

WORKDIR /home/dev/workdir

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
