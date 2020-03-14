#!/usr/bin/env bash

docker build -t  caddy-local .

docker run -it --rm --name caddy-local --hostname caddy-local -p 8080:8080 -v $PWD/dist:/dist --network custom caddy-local


