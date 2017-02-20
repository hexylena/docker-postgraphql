FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN apk update && \
    apk add postgresql-client && \
    apk add postgresql && \
    npm install -g postgraphql
USER nobody

ADD run.sh /run.sh
EXPOSE 5000
ENTRYPOINT ["/run.sh"]
