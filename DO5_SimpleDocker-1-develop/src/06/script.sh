#!/bin/bash

gcc server.c -lfcgi
spawn-fcgi -p 9000 ./a.out
nginx -s reload
nginx -g "daemon off;"