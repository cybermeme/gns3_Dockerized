FROM fedora:33

LABEL Maintainer="cybermeme@arch-libertas.net" \
      Description="gns3 basic toolZbox" \
      Version="2.2.16"

RUN dnf update -yq; dnf install -yq elinks tcpdump net-tools iproute; dnf clean all;

ADD ./interfaces /etc/network
ADD ./start.sh /root
RUN chmod u+x /root/start.sh

CMD /root/start.sh
