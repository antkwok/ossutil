include version.txt
include .env.developer.example

build_prod:
	@echo "Build production docker image for $(version)"
	docker build -t antkwok/ossutil:$(version) .

build_prod_m1:
	@echo "Build production docker image for $(version)"
	docker buildx build --platform=linux/amd64 -t antkwok/ossutil:$(version) .

push_prod:
	@echo "Push image for $(version)"
	docker login --username=$(DOCKER_LOGIN_USERNAME) && \
	docker push antkwok/ossutil:$(version)
