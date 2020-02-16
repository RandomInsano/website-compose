#!/bin/bash

set -e

pushd docker-compose
docker-compose build --pull
docker-compose down
docker-compose up -d

