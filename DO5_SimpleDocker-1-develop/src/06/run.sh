#!/bin/bash

docker rm -f server
docker rm -f proxy
docker-compose build
docker-compose up