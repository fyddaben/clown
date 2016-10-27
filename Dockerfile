FROM iron/node:0.12

MAINTAINER fyddaben <838730592@qq.com>

ENV VERSION=v0.12.15 NPM_VERSION=2

RUN apk add --update  build-base musl python unzip bash cairo pango pkgconfig xproto renderproto kbproto xextproto 

RUN mkdir -p /home/work/video  

RUN cd /home/work &&  wget https://github.com/fyddaben/clown/archive/master.zip && unzip master.zip && cd clown-master/app   

VOLUME ["/home/work"]

WORKDIR  /home/work/
