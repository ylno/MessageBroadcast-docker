#/bin/sh

docker build --no-cache -t mfrankl/messagebroadcast:latest .
docker push mfrankl/messagebroadcast

