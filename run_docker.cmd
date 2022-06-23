@echo off
set tag=%1
docker build --tag=%tag% .
docker images ls
docker run -it %tag% bash