include env_make
SHELL := /bin/bash
NS = whw3
VERSION ?= latest
REPO = baseimage

.PHONY: alpine rpi buildpack-deps build push release clean

alpine:
	./build.sh alpine

rpi:
	./build.sh rpi

buildpack-deps:
	./build.sh buildpack-deps

all: 
	./build.sh all
	
build:
	./build.sh all

push:
	docker push $(NS)/$(REPO)
	docker push $(NS)/alpine
	docker push $(NS)/rpi
	docker push $(NS)/rpi-s6
	docker push $(NS)/buildpack-deps

release: build
	make push -e VERSION=$(VERSION)

default: build

clean: 
	./clean.sh
