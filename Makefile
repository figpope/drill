SHELL := /bin/bash

.PHONY: package
package:
	mvn clean install -Dmaven.test.skip=true

# TODO - add versioning for real
.PHONY: build-docker
build-docker: package
	rm -rf docker/apache-drill-base/apache-drill.tar.gz
	tar -zcvf docker/apache-drill-base/apache-drill.tar.gz -C distribution/target/apache-drill-1.11.0/apache-drill-1.11.0 .
	docker-compose build apache-drill-base
	docker-compose build apache-drill-standalone apache-drill

.PHONY: deploy-docker
deploy-docker: build-docker
	docker-compose push
