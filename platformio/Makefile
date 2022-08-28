TAG = latest
REPO = unicontrol/addon-platformio
NAME = addon-platformio

build:
	@docker build -t $(REPO):$(TAG) \
		--build-arg BUILD_FROM=ghcr.io/hassio-addons/debian-base/amd64:5.3.1 \
		--build-arg BUILD_ARCH=amd64 \
		--build-arg BUILD_DATE=$(date) \
		--build-arg BUILD_REPOSITORY=https://bitbucket.org/unisec/addons/src/master/platformio \
		--build-arg BUILD_VERSION=1.0.0 .
			
	@docker tag $(REPO):$(TAG) unicontrol/$(NAME)
	
push: 
	@docker push $(REPO):$(TAG) 

release: build push