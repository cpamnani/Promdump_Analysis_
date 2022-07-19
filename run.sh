#!/usr/bin/bash

mkdir $1
tar xzf $2 -C $1
cd $1
chmod -R g+w $1
cd ..
podman run --user $(id -u) --userns keep-id \
             -v ./$1:/prometheus:rw,Z \
             -p 9090:9090 prom/prometheus &
mkdir grafana_data
cd grafana_data
podman run --name $3 -d -p 3000:3000 -v $(pwd):/grafana_data/db:Z grafana 
podman run --rm -it grafana &



	
