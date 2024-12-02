minikube delete
minikube start


# Create Elasticsearch resources
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml

# Create Elasticsearch service
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearchservice.yaml

# Create Kibana resources
kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/kibana.yaml
# Check Elasticsearch resources
kubectl get elasticsearch -n elasticsearch

# Check Elasticsearch service
kubectl get svc -n elasticsearch

# Check Kibana resources
kubectl get kibana -n elasticsearch