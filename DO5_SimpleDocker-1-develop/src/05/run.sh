#!/bin/bash

docker rm -f server
docker build -t krystina:docker .
docker run --name server -d -p 80:81 -v /Users/krystina/proj/DO5_SimpleDocker-1/src/05/nginx.conf:/etc/nginx/nginx.conf krystina:docker
dockle -i CIS-DI-0010 krystina:docker
