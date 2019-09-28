NAME := atcoder-julia
VERSION := 1.0

build:
	docker build -t $(NAME):$(VERSION) .

rerun: rm run

run:
	docker run -it --name $(NAME) $(NAME):$(VERSION) /bin/bash

rm:
	docker rm -f $(NAME)

exec:
	docker exec -it $(NAME) /bin/bash

logs:
	docker logs $(NAME)
