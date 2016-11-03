FROM node:4

MAINTAINER fyddaben <838730592@qq.com>

RUN apt-get update && apt-get install -y unzip bash
RUN apt-get update \
    && apt-get install -qq libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++ yasm

RUN cd /home && wget https://www.ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2 && tar jxvf ffmpeg-snapshot.tar.bz2 && cd ffmpeg && ./configure --prefix=/usr && time make -j 8 && echo 'export PATH="/home/ffmpeg:$PATH"' >> ~/.bashrc && source ~/.bashrc 

RUN mkdir -p /home/work  

RUN cd /home/work &&  wget https://github.com/fyddaben/clown/archive/master.zip && unzip master.zip && cd clown-master/app  && npm i 

VOLUME ["/home/work"]

WORKDIR  /home/work/
