FROM ubuntu:14.04

RUN apt-get install openssh-server -y
RUN service ssh start

RUN mkdir /demo_files
COPY sample.jpg /demo_files
COPY eicar_com.zip /demo_files

ENTRYPOINT sleep infinity
