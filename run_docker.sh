#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag udacity-proj4-aj
# Step 2:
# List docker images
docker images | grep udacity-proj4-aj
# Step 3:
# Run flask app
docker run -p 8000:80 udacity-proj4-aj