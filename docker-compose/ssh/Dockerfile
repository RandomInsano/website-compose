FROM alpine

# Taken from https://wiki.alpinelinux.org/wiki/Setting_up_a_ssh-server

RUN apk add openssh
RUN /usr/bin/ssh-keygen -A
RUN rm /etc/ssh/ssh_host_*_key
RUN ssh-keygen -N '' -t rsa     -f /etc/ssh/ssh_host_rsa_key -b 4096
RUN ssh-keygen -N '' -t ecdsa   -f /etc/ssh/ssh_host_ecdsa_key -b 521
RUN ssh-keygen -N '' -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

CMD ["/usr/sbin/sshd", "-D", "-e"]

