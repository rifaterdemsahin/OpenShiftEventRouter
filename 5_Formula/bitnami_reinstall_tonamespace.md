# Installing Elasticsearch and Kibana using Bitnami
>>> reboot 
minikube delete
minikube start
## Prerequisites
- Kubernetes cluster
- Helm installed and configured

## Add Bitnami Repository
First, add the Bitnami repository to Helm:
```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```

kubectl create namespace monitoring

## Install Elasticsearch
To install Elasticsearch in the `monitoring` namespace, use the following command:
```sh
helm install elasticsearch bitnami/elasticsearch --namespace monitoring
```

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl port-forward --namespace monitoring svc/elasticsearch 9200:9200
Forwarding from 127.0.0.1:9200 -> 9200
Forwarding from [::1]:9200 -> 9200


new terminal 

## Install Kibana
To install Kibana in the `monitoring` namespace, use the following command:
```sh
helm install kibana bitnami/kibana --namespace monitoring
```

    helm upgrade --namespace monitoring kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200

## Verify Installation
Check the status of the pods in the `monitoring` namespace to ensure they are running:
```sh
kubectl get pods --namespace monitoring
```

## Access Kibana
To access Kibana, you can use port forwarding:
```sh
kubectl port-forward svc/kibana 5601:5601 --namespace monitoring
```
Then, open your browser and go to `http://localhost:5601`.

## Cleanup
To uninstall Elasticsearch and Kibana from the `monitoring` namespace, use the following commands:
```sh
helm uninstall elasticsearch --namespace monitoring
helm uninstall kibana --namespace monitoring
```

That's it! You have successfully installed Elasticsearch and Kibana in the `monitoring` namespace using Bitnami.
