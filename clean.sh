#!/bin/bash

docker-compose --env-file ./config down
docker volume rm $(docker volume ls -q)
rm -rf app/
