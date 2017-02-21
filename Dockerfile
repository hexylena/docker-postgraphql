FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN apk update && \
    apk add bash && \
    apk add postgresql-client && \
    apk add postgresql && \
    npm install -g postgraphql

RUN mkdir /app

COPY run.sh /app/run.sh
COPY wait-for-it.sh /app/wait-for-it.sh
RUN chmod +x /app/run.sh
RUN chmod +x /app/wait-for-it.sh
EXPOSE 5000
USER nobody
cmd ["/app/run.sh"]
