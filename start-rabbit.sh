#!/bin/bash
docker run \
	--name rabbit \
	-itd \
	--restart unless-stopped \
	--hostname rabbit.lvh.me \
	--publish 8077:15672 \
	rabbitmq:3-management
