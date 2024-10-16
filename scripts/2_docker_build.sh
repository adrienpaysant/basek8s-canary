#!/bin/bash
docker build --build-arg BASE_COLOR=#f5c842 -t basek8s-canary:yellow -f app/docker/Dockerfile .
docker build --build-arg BASE_COLOR=#3498db -t basek8s-canary:blue -f app/docker/Dockerfile .
