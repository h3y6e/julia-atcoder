NAME := atcoder-julia
VERSION := 1.0

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -v $$PWD/contests:/contests -it \
	--network=host --rm $(NAME):$(VERSION) julia
