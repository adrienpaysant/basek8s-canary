# basek8s-canary

This repository provides a simple example of a canary deployment on Kubernetes (K8s). The goal is to demonstrate how to gradually roll out new application versions to a subset of users, allowing for safe testing and monitoring before fully releasing it to all users. It showcases how to manage traffic distribution between the old and new versions, helping ensure stability and minimize the risk of deploying changes in production.

## Requirements

- docker
- kubectl
- kubens

## Quick setup

### Local a cluster

> ./scripts/setup_cluster.sh

### Build containers

### Launch base

### Launch canary

### Decide to keep base or to upgrade to canary

## Quick destroy

### Shutdown local cluster

> ./scripts/delete_cluster.sh

## Doc

### k8s

#### /base

Base manifest to deploy :

- deployment
- service
- ingress

#### /canary

- Canary ressources
  Ingress has annotations:

```yaml
annotations:
  nginx.ingress.kubernetes.io/canary: "true"
  nginx.ingress.kubernetes.io/canary-weight: "30"
```

Same ingress host as base.

### app/docker

Basic nginx with custom plain html website

Dockerfile you need to specify an arg that is an hexa color code (will be mapped to the webapp).

### app/src

Plain html website with the background color that is shifting for the purpose of the demo.

###

### All scripts

#### docker_build.sh

- builds two docker containers one with a yellow background, the other is blue

#### deploy_base.sh

- deploy the main

#### deploy_canary.sh

- deploy the canary

#### delete_upgrade_canary.sh

- removes the canary deployment and upgrade the main with new version

#### delete_canary.sh

- removes the canary deployment without changing anything

#### delete_canary_main.sh

- removes everything

#### setup_cluster.sh

- launches a k8s cluster

#### delete_cluster.sh

- removes the k8s cluster
