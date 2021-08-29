FROM alpine:3.14

COPY _build/prod/rel/try_clojerl /opt/try_clojerl

ENV CODE_LOADING_MODE interactive

RUN apk add --update ncurses openssl \
    && adduser -D -S -u 1000 clojerl \
    && mkdir -p /var/log/try_clojerl \
    && chown -R clojerl /opt/try_clojerl \
    && chown -R clojerl /var/log/try_clojerl

USER clojerl

ENTRYPOINT /opt/try_clojerl/bin/try_clojerl foreground
