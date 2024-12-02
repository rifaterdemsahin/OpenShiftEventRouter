#!/bin/bash



# Create Elasticsearch resources
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml

# Create Elasticsearch service
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearchservice.yaml

# Create Kibana resources
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml
