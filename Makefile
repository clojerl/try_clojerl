.PHONY: all release clean docker-build docker

BUILD_IMAGE ?= erlang:20.1.4-alpine
DOCKER_REPO := jfacorro/try_clojerl
DOCKER_TAG  := $(shell git describe --tags --always 2>/dev/null || echo 0)

all:
	@ rebar3 compile

repl:
	@ rebar3 clojerl repl --apps try_clojerl

clean:
	@ rm -rf _build rebar.lock

release:
	@ rebar3 as prod release

docker-build: clean
	@ docker run -i            \
		-v ${PWD}:/project \
		-w /project        \
		${BUILD_IMAGE} scripts/build

docker: docker-build
	@ docker build -t ${DOCKER_REPO}:${DOCKER_TAG} .

publish:
	@ docker tag ${DOCKER_REPO}:${DOCKER_TAG} ${DOCKER_REPO}:latest
	@ docker push ${DOCKER_REPO}:${DOCKER_TAG}
	@ docker push ${DOCKER_REPO}:latest

docker-stop:
	@ scripts/docker-stop

docker-start:
	@ scripts/docker-start
