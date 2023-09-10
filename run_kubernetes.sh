#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=jainsmailbox/udacity-proj4-aj
# Step 2
# Run the Docker Hub container with kubernetes

kubectl run udacity-proj4-aj --image=$dockerpath --port=80 --labels app=udacityproject4
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-proj4-aj 8000:80