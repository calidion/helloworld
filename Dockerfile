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
RUN apt install -y gcc g++ openjdk-11-jdk python nodejs perl php-cli golang-go rustc bwbasic nasm groovy ruby-full gfortran r-base
RUN apt install -y fp-compiler gprolog sbcl
RUN apt autoremove -y

COPY . /src
WORKDIR /src
RUN chmod +x /src/run.sh

## Language C
RUN gcc -o helloworld.co helloworld.c

## Language C++
RUN g++ -o helloworld.cppo helloworld.cpp

## Language Java
RUN javac helloworld.java

## Language Python

## Language Node.js
## Language perl

## Language php
## Language basic
## Language go
## Language rust
RUN rustc helloworld.rs -o helloworld.rso

## Language C#
RUN dotnet new console --output helloworld

## Language Assembly Language

RUN nasm -f elf helloworld.asm
RUN ld -m elf_i386 -s -o helloworld.asmo helloworld.o

## Language Fortran
RUN gfortran helloworld.for -o helloworld.foro

## Language Pascal
RUN fpc helloworld.pas -ohelloworld.paso

## Language Pascal

RUN gplc helloworld-prolog.pl -o helloworld-prolog.plo

CMD [ "./run.sh"]
