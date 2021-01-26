#Dockerfile vars
version=latest

#vars
IMAGENAME=q3ra3-server
REPO=ra3se
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${version}

.PHONY: help build push all

help:
	@echo "Makefile arguments:"
	@echo ""
	@echo "version - version"
	@echo ""
	@echo "Makefile commands:"
	@echo "build"
	@echo "push"
	@echo "all"

.DEFAULT_GOAL := all

build:
	@docker build --pull --build-arg ALP_VER=${version} -t ${IMAGEFULLNAME} .

push:
	@docker push ${IMAGEFULLNAME}

all: build push
