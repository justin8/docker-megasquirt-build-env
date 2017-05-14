#!/bin/bash

docker run --rm -it -v $PWD:/build --workdir /build megasquirt-build-env
