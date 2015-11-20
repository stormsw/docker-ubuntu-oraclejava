#!/usr/bin/docker
# based on Ubuntu
FROM ubuntu
MAINTAINER Alexander Varchenko <alexander.varchenko@gmail.com>
#this helps with java timezone issues
RUN echo Europe/Kiev > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
ENV DEBIAN_FRONTEND noninteractive
# Part1: Oracle:Java6
RUN dpkg --add-architecture i386 &&\
    apt-get update && \
    apt-get --no-install-recommends -q -y install libc6:i386
    curl \
    unzip && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV DEBIAN_FRONTEND newt
ADD jdk-6u29-linux-i586.bin /tmp/jdk-6u29-linux-i586.bin
WORKDIR /usr/lib/java
RUN sh /tmp/jdk-6u29-linux-i586.bin -noregister
ENV JAVA_HOME /usr/lib/java/jdk1.6.0_29
ENV PATH $JAVA_HOME:$PATH
RUN ln -s $JAVA_HOME/bin/java /usr/bin/java
RUN ln -s $JAVA_HOME/bin/javac /usr/bin/javac
CMD /bin/bash
