FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install python python-pip -y
RUN apt-get install apache2 -y 
