.PHONY: all

BUILD_IMAGE = jfacorro/erlang:20.1.1-armhf-alpine
DOCKER_REPO = jfacorro/try_clojerl
DOCKER_TAG  = $(shell git describe --always 2>/dev/null || echo 0)

all:
	rebar3 clojerl compile

release: all
	rebar3 as prod release

docker-build:
	@ docker run -i            \
		-v ${PWD}:/project \
		-w /project        \
		${BUILD_IMAGE} scripts/build

docker: docker-build
	@ docker build -t ${DOCKER_REPO}:${DOCKER_TAG} .
