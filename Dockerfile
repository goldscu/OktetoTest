FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install git wget openssh-server -y
RUN echo 'cd /root' >>/luo.sh
RUN echo 'systemctl start sshd.service' >>/luo.sh
RUN echo root:laoluoshushu|chpasswd
RUN chmod 755 /luo.sh
EXPOSE 80
CMD  /luo.sh
