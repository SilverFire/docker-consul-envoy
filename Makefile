.PHONY: build build_and_push
DOCKER_REPOSITORY="nicholasjackson/consul-envoy"
DOCKER_VERSION="v1.8.0-beta2-v0.14.1"

build:
	docker build -t "${DOCKER_REPOSITORY}:${DOCKER_VERSION}" .

build_and_push: build
	docker push "${DOCKER_REPOSITORY}:${DOCKER_VERSION}"