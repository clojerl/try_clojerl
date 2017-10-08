FROM arm32v6/alpine:3.6

RUN apk add --update ncurses openssl

COPY _build/prod/rel/try_clojerl /opt/try_clojerl

ENTRYPOINT /opt/try_clojerl/bin/try_clojerl foreground
