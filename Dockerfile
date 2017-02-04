FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN npm install -g postgraphql
USER nobody

ADD run.sh /run.sh
EXPOSE 5000
ENTRYPOINT ["/run.sh"]
