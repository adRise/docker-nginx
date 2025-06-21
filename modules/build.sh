#!/bin/bash

nginx_ver=1.27.5
tubi_ver=1

docker build --build-arg ENABLED_MODULES="fips-check headers-more geoip2 geoip njs keyval jwt" \
	--build-arg NGINX_FROM_IMAGE="nginx:$nginx_ver" \
	-t tubi-nginx:$nginx_ver-$tubi_ver .
