FROM geekduck/node-canvas:latest

MAINTAINER fyddaben <838730592@qq.com>

RUN apt-get update && apt-get install -y unzip bash

RUN mkdir -p /home/work/video  

RUN cd /home/work &&  wget https://github.com/fyddaben/clown/archive/master.zip && unzip master.zip && cd clown-master/app   

VOLUME ["/home/work"]

WORKDIR  /home/work/
