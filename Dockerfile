FROM isaackuang/alpine-base:3.8.0

ENV PGDATA=/data/postgresql

RUN apk --no-cache --progress add postgresql && \
    mkdir -p $PGDATA && \
    chown -R postgres.postgres $PGDATA

COPY config /
