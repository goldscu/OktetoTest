FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install openssh-server wget curl -y
EXPOSE 80
EXPOSE 22
CMD ['systemctl', 'start', 'sshd.service', '&&' 'ufw', 'allow', 'ssh']
