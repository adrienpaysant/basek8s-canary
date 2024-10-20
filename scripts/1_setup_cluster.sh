#!/bin/bash
kubectl create namespace canary
kubens canary
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
