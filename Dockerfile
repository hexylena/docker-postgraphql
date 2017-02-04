FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN adduser -h /graphql -D graphql
USER graphql
RUN cd /graphql && npm install postgraphql

ADD run.sh /run.sh
EXPOSE 5000
ENTRYPOINT ["/run.sh"]
