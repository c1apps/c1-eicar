FROM centos:7
RUN yum install openssh-server -y && systemctl start sshd

RUN mkdir /demo_files
COPY sample.jpg /demo_files
COPY eicar_com.zip /demo_files

ENTRYPOINT sleep infinity
