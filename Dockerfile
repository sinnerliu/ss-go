FROM alpine:3.5

MAINTAINER sinnerliu

RUN mkdir -p /ss

ADD files/shadowsocks-server /ss/shadowsocks-server
ADD files/config.json /ss/config.json
ADD files/start.sh /ss/start.sh

RUN chmod u+x /ss/start.sh && \
    chmod u+x /ss/shadowsocks-server
	
	
EXPOSE 1024

CMD ["/ss/start.sh"]
