#!/bin/bash
cd k8s/canary

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml

cd ../..
