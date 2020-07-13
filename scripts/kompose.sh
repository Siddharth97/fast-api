#! /usr/bin/env sh

# Exit in case of error
curl -L https://github.com/kubernetes/kompose/releases/download/v1.21.0/kompose-linux-amd64 -o kompose
kompose up