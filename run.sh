#! /bin/sh
docker build . -t freenet-docker
docker run -ti --rm --net=host freenet-docker
