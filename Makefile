TESTLINK_VERSION=1.9.17
IMAGE_VERSION=4

build:
	docker build --build-arg TESTLINK_VERSION=$(TESTLINK_VERSION) -t jouve/testlink:$(TESTLINK_VERSION)-$(IMAGE_VERSION) .

latest: build
	docker tag jouve/testlink:$(TESTLINK_VERSION)-$(IMAGE_VERSION) jouve/testlink:latest

push: build
	docker push jouve/testlink:$(TESTLINK_VERSION)-$(IMAGE_VERSION)

push-latest: latest
	docker push jouve/testlink:latest

