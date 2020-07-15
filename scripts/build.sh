#! /usr/bin/env sh

# Exit in case of error
set -x
curl -L https://github.com/kubernetes/kompose/releases/download/v1.18.0/kompose-linux-amd64 -o kompose
cat $HOME/.docker/config.json
chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose
kompose version
kompose convert 
kubectl create -f backend-deployment.yaml,backend-env-configmap.yaml,celeryworker-deployment.yaml,celeryworker-env-configmap.yaml,db-deployment.yaml,db-env-configmap.yaml,app-db-data-persistentvolumeclaim.yaml,flower-deployment.yaml,flower-env-configmap.yaml,frontend-deployment.yaml,pgadmin-deployment.yaml,pgadmin-env-configmap.yaml,proxy-deployment.yaml,proxy-claim0-persistentvolumeclaim.yaml,queue-deployment.yaml  