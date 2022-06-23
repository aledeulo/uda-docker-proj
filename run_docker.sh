#! /bin/bash -e
docker build --tag=$1 .

docker images ls

docker run -it $1 bash
