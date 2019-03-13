FROM isaackuang/alpine-base:3.8.0

ENV PGDATA=/data/postgresql

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk -U upgrade -a && \
    apk --no-cache --progress add postgresql postgresql-contrib postgis@testing && \
    mkdir -p $PGDATA && \
    chown -R postgres.postgres $PGDATA

COPY config /
