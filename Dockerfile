FROM debian
RUN yum install openssh-server
EXPOSE 80
EXPOSE 22
CMD ['systemctl', 'start', 'sshd.service']
