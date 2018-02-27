PHORONIX_VERSION?=7.6.0

bench_build:
	@docker build -t jooksan/phoronix:$(PHORONIX_VERSION) --build-arg PHORONIX_VERSION=$(PHORONIX_VERSION) .

bench:
	@docker run --rm -i --name phoronix -v /benchmark:/benchmark jooksan/phoronix:latest
