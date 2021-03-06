#!/bin/bash
# Author - Alexandre S. Cezar

#Authorizes the instance to use the terraform Service Account
sudo gcloud auth activate-service-account --key-file=/tmp/terraform.json

# Connecting to the K8s cluster
sudo gcloud container clusters get-credentials microsegmentation-gke --zone us-east1-c

# Configuring the namespaces
sudo kubectl create namespace sock-shop && \
sudo kubectl create namespace guestbook && \
sudo kubectl create namespace rogue && \
sudo kubectl create namespace victim && \

# Deploying the applications
sudo kubectl config set-context --current --namespace=sock-shop && \
sudo kubectl apply -f /tmp/sock-shop.yaml && \
sudo kubectl config set-context --current --namespace=guestbook && \
sudo kubectl apply -f /tmp/guestbook.yaml && \
sudo kubectl config set-context --current --namespace=rogue && \
sudo kubectl apply -f /tmp/rogue.yaml && \
sudo kubectl config set-context --current --namespace=victim && \
sudo kubectl apply -f /tmp/victim.yaml