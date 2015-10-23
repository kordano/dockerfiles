#!/bin/bash
docker stop bulldog;
docker rm bulldog;
docker run -d -v /home/konrad/data/bulldog:/opt/data -p 8080:8080 --name bulldog kordano/bulldog
