# Install Elasticsearch

This guide provides instructions to deploy Elasticsearch on your Kubernetes cluster. We are using Elasticsearch to store and search log data efficiently.

## Elasticsearch Configuration

```yaml
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
    name: quickstart
spec:
    version: 7.10.0
    nodeSets:
        - name: default
            count: 3
            config:
                node.store.allow_mmap: false
```

## Apply the Configuration

Run the following command to apply the Elasticsearch configuration:

```bash
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
```