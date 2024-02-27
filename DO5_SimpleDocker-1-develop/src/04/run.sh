#!/bin/bash

docker rm -f server
docker build -t krystina:docker .
docker run -it --name server -d -p 80:81 -v /Users/krystina/proj/DO5_SimpleDocker-1/src/04/nginx.conf:/etc/nginx/nginx.conf krystina:docker bash