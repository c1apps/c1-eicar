FROM ubuntu:14.04

RUN apt-get install openssh-server -y && service sshd start

RUN mkdir /demo_files
COPY sample.jpg /demo_files
COPY eicar_com.zip /demo_files

ENTRYPOINT sleep infinity
