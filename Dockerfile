FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server wget curl systemctl -y
RUN echo 'cd /root' >>/luo.sh
RUN echo 'systemctl start sshd' >>/luo.sh
RUN chmod 755 /luo.sh
EXPOSE 80
EXPOSE 22
CMD /luo.sh
