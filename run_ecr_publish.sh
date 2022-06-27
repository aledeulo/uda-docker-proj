#! /bin/bash -e

aws ecr get-login-password --region us-east-1 --profile $1 | docker login --username AWS --password-stdin 246528985509.dkr.ecr.us-east-1.amazonaws.com
docker build -t $2 .
docker tag uda-docker-proj:latest 246528985509.dkr.ecr.us-east-1.amazonaws.com/$2:latest
docker push 246528985509.dkr.ecr.us-east-1.amazonaws.com/$2:latest