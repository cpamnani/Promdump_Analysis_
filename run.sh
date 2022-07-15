#!/usr/bin/bash

mkdir $1
tar xzf $2 -C $1
cd $1
chmod -R g+w $1
cd ..
podman run --user $(id -u) --userns keep-id \
             -v ./$1:/prometheus:rw,Z \
             -p 9090:9090 prom/prometheus
             
/Promdump_Analysis/grafana-9.0.2/bin/grafana-serve
	
