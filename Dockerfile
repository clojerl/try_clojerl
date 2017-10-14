FROM arm32v6/alpine:3.6

COPY _build/prod/rel/try_clojerl /opt/try_clojerl

RUN apk add --update ncurses openssl \
    && adduser -D -S -u 1000 clojerl \
    && chown -R clojerl /opt/try_clojerl

USER clojerl

ENTRYPOINT /opt/try_clojerl/bin/try_clojerl foreground
