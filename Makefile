.PHONY: all release clean docker-build docker

BUILD_IMAGE ?= erlang:20.1.4-alpine
DOCKER_REPO := jfacorro/try_clojerl
DOCKER_TAG  := $(shell git describe --tags --always 2>/dev/null || echo 0)

all:
	@ rebar3 compile

repl: all
	@ rebar3 clojerl repl

clean:
	@ rm -rf _build rebar.lock

release: all
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
	@ sudo scripts/docker-stop

docker-start:
	@ sudo scripts/docker-start
