#!/bin/bash

set -e

pushd docker-compose

if [ $# -eq 0 ]; then
	echo "Usage: $0 [-dpr]"
	echo ""
	echo "Options:"
	echo " -d		Delete unused images (from all of docker!)"
	echo " -p		Pull updates from dockerhub "
	echo " -r		Rebuild deployment"
	echo ""
	exit 1
fi

if [[ $* == *-p* ]]; then
	docker-compose build --pull
fi

if [[ $* == *-r* ]]; then
	docker-compose down
	docker-compose up -d
fi

if [[ $* == *-d* ]]; then
	docker image prune -af
fi
