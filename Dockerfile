FROM ubuntu:18.04
MAINTAINER Vibhor Mehta vibhormehta20@gmail.com
RUN apt-get update && apt-get install -y  wget gcc make libpcre3-dev libz-dev 
RUN wget http://homes.cs.washington.edu/~dcjones/fastq-tools/fastq-tools-0.8.tar.gz
RUN tar xvf fastq-tools-0.8.tar.gz
WORKDIR fastq-tools-0.8
RUN ./configure
RUN  make install fastq==0.8


