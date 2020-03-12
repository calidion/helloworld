#Download base image ubuntu 16.04
FROM ubuntu:18.04

# Update Ubuntu Software repository
RUN apt-get -y update && apt-get install -y && apt autoremove -y

RUN apt-get install -y git gcc g++
RUN git clone --depth 1 https://github.com/calidion/helloworld.git

RUN cd helloworld
COPY . /src
WORKDIR /src
RUN chmod +x /src/run.sh

RUN gcc -o helloworld01 helloworld.c
RUN g++ -o helloworld02 helloworld.cpp

CMD [ "./run.sh"]
