#!/bin/bash

cd "$(dirname "$(readlink -f "$0")")"

docker build -t megasquirt-build-env .
