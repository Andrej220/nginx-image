#!/bin/bash

kubectl apply -f task-build.yaml
kubectl apply -f task-update-gitops.yaml
kubectl apply -f pipeline.yaml
kubectl apply -f pipeline-run.yaml
