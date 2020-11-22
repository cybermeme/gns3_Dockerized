FROM gns3base:v2b

LABEL Maintainer="cybermeme@arch-libertas.net" \
      Description="This is GNS3 Server with integrated tools VPCS" \
      Version="2b"

#to install VPCS and ubridge from GNS3 git repo
RUN dnf install -yq \
    	gcc \
	cmake \
	elfutils-libelf-devel \
	git \
	libpcap-devel; \
    mkdir -p /opt/addSoft/; \
    cd /opt/addSoft/; \
    git clone git://github.com/GNS3/dynamips.git; \
    cd dynamips && \
       mkdir build && \
       cd build && cmake .. && \
       make; \
    make install; \
    cd /opt/addSoft/ && \
       git clone https://github.com/GNS3/vpcs.git && \
       cd vpcs/src && \
       sh ./mk.sh && \
       chmod +x vpcs && \
       cp vpcs /usr/local/bin/; \
    rm -rf /opt/addSoft/ && \
       dnf remove -yq \
       	   bzip2 \
	   gcc \
	   cmake \
	   elfutils-libelf-devel \
	   git \
	   libpcap-devel; \
	dnf clean all


ADD ./start.sh /root/
ADD ./daemon.json /etc/docker/daemon.json
COPY ./.config/GNS3/2.2/* /home/gns3user/.config/GNS3/2.2/


RUN chmod +x /root/start.sh && chown -R gns3user:gns3user /home/gns3user/.config

WORKDIR /home/gns3user/
VOLUME /home/gns3user

ENTRYPOINT /root/start.sh
