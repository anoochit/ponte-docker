FROM ubuntu:14.04.2


RUN  apt-get update && \
     apt-get install -y libzmq-dev build-essential nodejs npm && \
     ln -s /usr/bin/nodejs /usr/bin/node && \
     npm install -g ponte bunyan 

EXPOSE 3000
EXPOSE 1883

ADD ./start.sh /
ADD ./config.cfg /

RUN chmod +x /start.sh

CMD ./start.sh
