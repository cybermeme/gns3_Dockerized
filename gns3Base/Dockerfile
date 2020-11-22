FROM fedora:33

LABEL Maintainer="cybermeme@arch-libertas.net" \
      Description="This is GNS3 base integration" \
      Version="2b"

RUN dnf update -yq

RUN dnf install -yq \
    	gns3-server \
    	gns3-gui

RUN dnf install -yq \
    	wireshark-cli \
    	qemu-img \
	moby-engine


RUN useradd -m -G gns3,wheel,wireshark,qemu,docker gns3user
