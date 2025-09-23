# Happy Server Docker Build & Deploy

include .env

.PHONY: build push deploy

# Build the Docker image
build:
	docker build -t $(IMAGE_TAG) .

# Push the Docker image to registry
push:
	docker push $(IMAGE_TAG)

# Build and push in one command
deploy: build push