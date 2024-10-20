#!/bin/bash
cd k8s/base

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml

cd ../..
