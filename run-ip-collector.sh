#!/bin/bash

REPOSITORY=https://github.com/tundravarg/netology-shvirtd-example-python.git
BRANCH=lesson-5

TARGET=/opt/ip-collector-service

rm -rf $TARGET &&

git clone $REPOSITORY $TARGET &&
cd $TARGET &&
git checkout $BRANCH &&

docker compose create &&
docker compose up &&

echo "Done" || ( echo "Fail"; exit 1 )
