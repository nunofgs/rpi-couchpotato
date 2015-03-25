FROM resin/rpi-raspbian
MAINTAINER Nuno Sousa <nunofgs@gmail.com>

RUN apt-get -q update
RUN apt-get -qy --force-yes dist-upgrade

RUN apt-get install -qy --force-yes  python git-core
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer

VOLUME /config
VOLUME /data

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 5050

RUN apt-get -qy autoremove &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*

CMD ["/start.sh"]
