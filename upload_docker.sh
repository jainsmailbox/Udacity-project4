#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=jainsmailbox/udacity-proj4-aj
# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=jainsmailbox
docker tag udacity-proj4-aj:latest ${dockerpath}:latest
# Step 3:
# Push image to a docker repository
docker push $dockerpath