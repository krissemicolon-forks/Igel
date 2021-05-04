FROM ubuntu:latest
MAINTAINER Timo Sarkar <sartimo10@gmail.com>

RUN sudo apt-get -y update
RUN sudo apt-get install ghdl -y
RUN sudo apt-get install gcc -y
RUN sudo apt-get install iverilog -y

RUN mkdir -p /igel
WORKDIR /igel

RUN apt-get -y install software-properties-common && \
    apt-add-repository -y ppa:pgavin/ghdl && \
    apt-get update -y

RUN apt-get -y install ghdl

ENV HOME /igel
