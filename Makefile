SHELL := /bin/bash

.PHONY: build-docker
build-docker:
	mvn clean install -Dmaven.test.skip=true
	cp distribution/target/apache-drill-1.11.0.tar.gz docker/apache-drill/apache-drill-1.11.0.tar.gz
	cp distribution/target/apache-drill-1.11.0.tar.gz docker/apache-drill-standalone/apache-drill-1.11.0.tar.gz
	docker-compose build

.PHONY: deploy-docker
deploy-docker: build-docker
	docker-compose push
