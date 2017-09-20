#include env_make
SHELL := /bin/bash
NS = whw3
VERSION ?= latest
REPO = baseimage

.PHONY: purge clean

all: alpine rpi buildpack-deps

alpine:
	./build.sh alpine

rpi:
	./build.sh rpi

buildpack-deps:
	./build.sh buildpack-deps

build: alpine rpi buildpack-deps

push: alpine rpi buildpack-deps
	docker push $(NS)/$(REPO)
	docker push $(NS)/alpine
	docker push $(NS)/rpi
	docker push $(NS)/rpi-s6
	docker push $(NS)/buildpack-deps

purge:
	./purge.sh

release: build
	make push -e VERSION=$(VERSION)

clean:
	./clean.sh
