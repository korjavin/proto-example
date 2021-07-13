.PHONE: build-docker
build-docker:
	docker build -t builder -f Dockerfile .


.PHONE: pbuf

BUFDIR = "/tmp/buf-generate"
pbuf: build-docker
	 docker run --rm -v $(PWD):/app builder /build.sh
