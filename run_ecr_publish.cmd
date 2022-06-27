@echo off
set profile=%1
set tag=%2

aws ecr get-login-password --region us-east-1 --profile %profile% | docker login --username AWS --password-stdin 246528985509.dkr.ecr.us-east-1.amazonaws.com
docker build -t %tag% .
docker tag uda-docker-proj:latest 246528985509.dkr.ecr.us-east-1.amazonaws.com/%tag%:latest
docker push 246528985509.dkr.ecr.us-east-1.amazonaws.com/%tag%:latest