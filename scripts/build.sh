#! /usr/bin/env sh

# Exit in case of error
set -x
curl -L https://github.com/kubernetes/kompose/releases/download/v1.18.0/kompose-linux-amd64 -o kompose

chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose
kompose version
kompose up