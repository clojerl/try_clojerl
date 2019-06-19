FROM alpine:3.9.4

COPY _build/prod/rel/try_clojerl /opt/try_clojerl

RUN apk add --update ncurses openssl \
    && adduser -D -S -u 1000 clojerl \
    && mkdir -p /var/log/try_clojerl \
    && chown -R clojerl /opt/try_clojerl \
    && chown -R clojerl /var/log/try_clojerl

USER clojerl

ENV CODE_LOADING_MODE interactive

ENTRYPOINT /opt/try_clojerl/bin/try_clojerl foreground
