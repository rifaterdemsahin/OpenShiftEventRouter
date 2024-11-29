# Port Forwarding for Minikube

To access the Elasticsearch service running on Minikube, you can set up port forwarding. Below are the steps to forward a port from your local machine to the Elasticsearch service.

## Elasticsearch Configuration

```yaml
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
    name: quickstart
    namespace: elasticsearch
spec:
    version: 7.10.0
    nodeSets:
        - name: default
            count: 3
            config:
                node.store.allow_mmap: false
```

## Steps to Set Up Port Forwarding

1. **Start Minikube** (if not already running):
        ```sh
        minikube start
        ```

2. **Set the Minikube context**:
        ```sh
        kubectl config use-context minikube
        ```

3. **Port forward the Elasticsearch service**:
        ```sh
        kubectl port-forward service/quickstart-es-http 9200:9200 -n elasticsearch
        ```

This command forwards port `9200` on your local machine to port `9200` on the Elasticsearch service in the `elasticsearch` namespace.

## Accessing Elasticsearch

Once the port forwarding is set up, you can access the Elasticsearch service at `http://localhost:9200`.

- Test the connection:
        ```sh
        curl http://localhost:9200
        ```

You should see a response from Elasticsearch indicating that it is running and accessible.
