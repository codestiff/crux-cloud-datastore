#!/bin/sh

docker build . --build-arg USER=$(whoami) --build-arg UID=$(id -u) -t ccf
