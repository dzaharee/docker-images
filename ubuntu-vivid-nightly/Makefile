SHELL=/bin/bash

REPO = dzaharee
NAME = ubuntu-vivid-nightly
DATE = $(shell date +%Y-%m-%d)
IMAGE_DIR = images
IMAGE_FILE = $(IMAGE_DIR)/$(DATE)
IMAGE_NAME = $(REPO)/$(NAME):$(DATE)
FROM = ubuntu:vivid

.PHONY: all push image clean

all: push

$(IMAGE_DIR):
	mkdir $@

$(IMAGE_FILE): $(IMAGE_DIR)
	docker pull $(FROM)
	if docker build -t $(IMAGE_NAME) --rm .; then \
	  cid=`docker inspect --format {{.Id}} $(IMAGE_NAME)`; \
	  echo; echo Built $(IMAGE_NAME) --- image id:; \
	  echo $$cid | tee $@; \
	fi

image: $(IMAGE_FILE)

push: image
	docker push $(IMAGE_NAME)

clean:
	rm -f $(IMAGE_FILE)
