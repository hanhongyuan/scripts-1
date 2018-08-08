#!/bin/bash

docker service create \
	--name hexo \
	--hostname hexo \
	--replicas 1 \
	--network swarm-net \
	--detach=true \
	--publish 4000:4000 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/path/in/host,target=/blog \
	--env GIT_EMAIL="username@example.com" \
	--env GIT_NAME="username" \
	newnius/hexo
