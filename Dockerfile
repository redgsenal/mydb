FROM ubuntu:20.04

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&\
    apt-get install -y default-jre &&\
    apt-get install -y git &&\
    apt-get install -y nano &&\
    apt-get install -y vim

RUN rm -rf /var/lib/apt/lists/* &&\
    apt clean

EXPOSE 80 8086 3306 3388 
