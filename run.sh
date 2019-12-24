#! /bin/sh
docker build . -t freenet-docker
docker run -ti --rm --mount source=Freenet,destination=/Freenet --net=host freenet-docker
