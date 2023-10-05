#!/bin/bash

set -x # output in /var/log/killercoda

VER=v0.21.0

wget https://github.com/inspektor-gadget/inspektor-gadget/releases/download/${VER}/kubectl-gadget-linux-amd64-${VER}.tar.gz
wget https://github.com/inspektor-gadget/inspektor-gadget/releases/download/${VER}/ig-linux-amd64-${VER}.tar.gz
wget https://github.com/inspektor-gadget/inspektor-gadget/releases/download/${VER}/gadgetctl-linux-amd64-${VER}.tar.gz

sudo tar xvzf kubectl-gadget-linux-amd64-${VER}.tar.gz -C /usr/local/bin/ kubectl-gadget
sudo tar xvzf ig-linux-amd64-${VER}.tar.gz             -C /usr/local/bin/ ig
sudo tar xvzf gadgetctl-linux-amd64-${VER}.tar.gz      -C /usr/local/bin/ gadgetctl

kubectl gadget deploy

kubectl run nginx --image=nginx
kubectl wait --for=condition=ready pod/nginx

touch /tmp/finished

