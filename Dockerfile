# DOCKER-VERSION	1.3.2

FROM nhoag/nodejs
MAINTAINER Nathaniel Hoag, info@nathanielhoag.com
MAINTAINER Jeff Simpson, jeff@syncrodoka.net

ENV BOTVERSION master
ENV BOTDIR /opt/bot-${BOTVERSION}
ENV BOTARCHIVE https://github.com/fooblahblah/bot/archive/${BOTVERSION}.tar.gz

RUN wget -q -O - ${BOTARCHIVE} | tar xz -C /opt

WORKDIR ${BOTDIR}

RUN npm install
