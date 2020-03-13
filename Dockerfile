#Download base image ubuntu 16.04
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get -y update && apt-get install -y && apt autoremove -y

RUN apt-get install -y git

# Clone the source code
RUN git clone --depth 1 https://github.com/calidion/helloworld.git





RUN cd helloworld
COPY . /src
WORKDIR /src
RUN chmod +x /src/run.sh


# Install compilers or interpretors, build source codes

## Language C
RUN apt install -y gcc
RUN gcc -o helloworld01 helloworld.c

## Language C++
RUN apt install -y g++
RUN g++ -o helloworld02 helloworld.cpp

## Language Java
RUN apt install -y openjdk-11-jdk
RUN javac helloworld.java

## Language Python
RUN apt install -y python

## Language Node.js
RUN apt install -y nodejs

## Language perl
RUN apt install -y perl


## Language php
RUN apt install -y php-cli

CMD [ "./run.sh"]
