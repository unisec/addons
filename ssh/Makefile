TAG = latest
REPO = unicontrol/addon-ssh
NAME = addon-ssh

build:
	@docker build -t $(REPO):$(TAG) \
		--build-arg BUILD_FROM=homeassistant/amd64-base:3.13 \
		--build-arg BUILD_ARCH=amd64 \
		--build-arg CLI_VERSION=4.11.0 \
		--build-arg LIBWEBSOCKETS_VERSION=4.1.4 \
		--build-arg TTYD_VERSION=1.6.3 .
			
	@docker tag $(REPO):$(TAG) unicontrol/$(NAME)

push: 
	@docker push $(REPO):$(TAG) 

release: build push