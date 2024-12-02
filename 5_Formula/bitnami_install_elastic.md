# Installing Elasticsearch and Kibana using Bitnami

## Prerequisites
- Kubernetes cluster
- Helm installed and configured

## Add Bitnami Repository
First, add the Bitnami repository to Helm:
```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```

## Install Elasticsearch
To install Elasticsearch, use the following command:
```sh
helm install elasticsearch bitnami/elasticsearch
```

## Install Kibana
To install Kibana, use the following command:
```sh
helm install kibana bitnami/kibana
```

## Verify Installation
Check the status of the pods to ensure they are running:
```sh
kubectl get pods
```

## Access Kibana
To access Kibana, you can use port forwarding:
```sh
kubectl port-forward svc/kibana 5601:5601
```
Then, open your browser and go to `http://localhost:5601`.

## Cleanup
To uninstall Elasticsearch and Kibana, use the following commands:
```sh
helm uninstall elasticsearch
helm uninstall kibana
```

That's it! You have successfully installed Elasticsearch and Kibana using Bitnami.