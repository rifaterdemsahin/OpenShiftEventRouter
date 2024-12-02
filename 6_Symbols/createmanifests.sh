#!/bin/bash

# Make the script executable
# chmod +x /workspaces/OpenShiftEventRouter/6_Symbols/createmanifests.sh

# Create Elasticsearch resources
kubectl create -f ./elasticsearch.yaml

# Create Elasticsearch service
kubectl create -f ./elasticsearchservice.yaml

# Create Kibana resources
kubectl create -f ./kibana.yaml
