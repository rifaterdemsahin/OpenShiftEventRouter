#!/bin/bash



# Create Elasticsearch resources
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml

# Create Elasticsearch service
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearchservice.yaml

# Create Kibana resources
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml
