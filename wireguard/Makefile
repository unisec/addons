TAG = latest
REPO = unicontrol/addon-wireguard
NAME = addon-wireguard

build:
	@docker build -t $(REPO):$(TAG) \
		--build-arg BUILD_FROM=ghcr.io/hassio-addons/base/amd64:14.3.3 \
		--build-arg BUILD_ARCH=amd64 .
			
	@docker tag $(REPO):$(TAG) unicontrol/$(NAME)

push: 
	@docker push $(REPO):$(TAG) 

release: build push