#Download base image ubuntu 18.04
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y apt-transport-https
RUN apt-get install -y git wget

# Clone the source code
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

# Update Ubuntu Software repository
RUN apt-get -y update
RUN apt-get install -y dotnet-sdk-5.0

# Install compilers or interpretors, build source codes
RUN apt install -y gcc g++ openjdk-11-jdk python nodejs perl php-cli golang-go rustc

RUN apt autoremove -y

COPY . /src
WORKDIR /src
RUN chmod +x /src/run.sh

## Language C
RUN gcc -o helloworld01 helloworld.c

## Language C++
RUN g++ -o helloworld02 helloworld.cpp

## Language Java
RUN javac helloworld.java

## Language Python

## Language Node.js
## Language perl

## Language php
## Language go
## Language rust
RUN rustc helloworld.rs -o helloworld.rso

## Language C#
RUN dotnet new console --output helloworld

CMD [ "./run.sh"]
