FROM jfacorro/clojerl:armhf-alpine

# Install build deps
RUN apk add --no-cache --virtual .try-clojerl-build-deps git make              \
    # Checkout
    && git clone --depth 1 https://github.com/clojerl/try_clojerl try_clojerl  \
    && mkdir -p try_clojerl/_checkouts                                         \
    && ln -s /clojerl /try_clojerl/_checkouts/clojerl                          \
    && cd try_clojerl                                                          \
    && rebar3 clojerl compile                                                  \
    && rebar3 release                                                          \
    # Clean deps
    && apk del .try-clojerl-build-deps
