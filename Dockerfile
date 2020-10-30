FROM centos:6
RUN yum install openssh-server -y && service sshd start

RUN mkdir /demo_files
COPY sample.jpg /demo_files
COPY eicar_com.zip /demo_files

ENTRYPOINT sleep infinity
