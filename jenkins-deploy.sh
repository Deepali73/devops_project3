#!/bin/bash

# Build Docker Image
docker build -t <dockerhub-username>/myapp:v1 .

# Push Image to DockerHub
docker push <dockerhub-username>/myapp:v1

# Run the Pod in Kubernetes
kubectl run myapp --image=<dockerhub-username>/myapp:v1 --port=5000

# Expose the Pod via NodePort
kubectl expose pod myapp --type=NodePort --port=5000

# Scale Out: Increase Replicas
kubectl scale pod myapp --replicas=3

# Enable Horizontal Pod Autoscaling
kubectl autoscale deployment myapp --min=2 --max=5 --cpu-percent=50
