FROM redis:2.8.13

USER root

RUN apt-get update && apt-get install -y nano less

COPY custom-redis.conf /usr/src/custom-redis.conf
RUN chown redis:staff /usr/src/custom-redis.conf

USER redis
