FROM alpine:3.1

RUN apk add --update redis

RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

CMD ["redis-server"]
