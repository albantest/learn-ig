#!/bin/bash

set -x # output in /var/log/killercoda

curl -sL https://github.com/kubernetes-sigs/krew/releases/download/v0.4.3/krew-linux_amd64.tar.gz | sudo tar -C /usr/local/bin -xzf - ./krew-linux_amd64
sudo mv /usr/local/bin/krew-linux_amd64 /usr/local/bin/kubectl-krew
kubectl krew install gadget
ln -s /root/.krew/bin/kubectl-gadget /usr/local/bin/kubectl-gadget

kubectl gadget deploy

kubectl run nginx --image=nginx
kubectl wait --for=condition=ready pod/nginx

touch /tmp/finished
