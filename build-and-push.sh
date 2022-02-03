#!/bin/bash

TAG="2.17.1.1-ubuntu"

docker build -t randombytedeveloper/pandoc-xnos:$TAG .
docker push randombytedeveloper/pandoc-xnos:$TAG
