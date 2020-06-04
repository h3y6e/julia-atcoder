NAME := atcoder-julia
VERSION := 1.0

build:
	docker build -t $(NAME):$(VERSION) .

run:
	docker run -v $$PWD/contests:/contests -it --network=host --rm $(NAME):$(VERSION) julia
