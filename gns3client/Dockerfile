FROM gns3base:v2b

LABEL Maintainer="cybermeme@arch-libertas.net" \
      Description="This is GNS3 Client with integrated tools wireshark, xterm, remote-viewer, firefox" \
      Version="2b"

RUN dnf install -yq \
    	virt-viewer \
	qemu-system-x86 \
	wireshark \
	xterm \
	firefox


USER gns3user

WORKDIR /home/gns3user/
VOLUME /home/gns3user

CMD /usr/bin/gns3