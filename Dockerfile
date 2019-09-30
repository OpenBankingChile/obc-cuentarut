# Dockerfile

FROM node
LABEL MAINTAINER Andres Junge <ajunge@totexa.cl>

USER root

RUN apt-get -y update

# build dependencies
RUN apt-get install -y --no-install-recommends git
RUN cd /opt/ && git clone https://github.com/OpenBankingChile/obc-cuentarut.git
RUN cd /opt/obc-cuentarut && npm install

# done

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 6001

ENTRYPOINT ["node", "/opt/obc-cuentarut/server.js"]
