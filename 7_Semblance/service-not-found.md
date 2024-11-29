@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl port-forward service/quickstart-es-http 9200:9200 -n elasticsearch
Error from server (NotFound): services "quickstart-es-http" not found
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

To create a service for Minikube, you can use the following YAML configuration:

```yaml
apiVersion: v1
kind: Service
metadata:
    name: quickstart-es-http
    namespace: elasticsearch
spec:
    selector:
        app: quickstart-es
    ports:
        - protocol: TCP
            port: 9200
            targetPort: 9200
```

Apply the service configuration with the following command:

```sh
kubectl apply -f service.yaml
```