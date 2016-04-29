VERSION ?= 8


build:
	docker build --no-cache --force-rm -t t0t0/docker-alpine-jre:$(VERSION) $(VERSION)

clean:
	docker rmi t0t0/docker-alpine-jre:$(VERSION)

rebuild: clean build

cleanup:
	docker images -q --filter "dangling=true" | xargs -r docker rmi
