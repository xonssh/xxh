#!/usr/bin/env xonsh

mkdir -p build
docker build . -f xxh-appimage.Dockerfile -t tmp/xxh-appimage
docker run --rm -v $PWD/build:/result tmp/xxh-appimage