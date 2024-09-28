FROM ubuntu:24.04

RUN apt update
RUN apt install -y curl wget openssh-server vim
RUN rm -rf /var/lib/apt/lists/*
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN service ssh start

RUN mkdir /workspace
WORKDIR /workspace
ADD entrypoint.sh /usr/bin/

ENTRYPOINT ["/usr/bin/entrypoint.sh"]