#!/bin/bash

# Appliquer le PVC en premier
kubectl apply -f pvc.yaml



# Appliquer les secrets
kubectl apply -f db-secret.yaml
kubectl apply -f pgadmin-secret.yaml


# Appliquer le StatefulSet
kubectl apply -f db-statefulset.yaml


# Appliquer les autres fichiers YAML
kubectl apply -f fastapi-deployment.yaml
kubectl apply -f hpa-fastapi.yaml
kubectl apply -f pgadmin-deployment.yaml

kubectl get all
