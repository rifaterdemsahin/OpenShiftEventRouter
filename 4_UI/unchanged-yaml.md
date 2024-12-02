@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml
kibana.kibana.k8s.elastic.co/quickstart unchanged
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

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

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get pods -n elasticsearch 
No resources found in elasticsearch namespace.

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get elasticsearch -n elasticsearch
NAME         HEALTH   NODES   VERSION   PHASE   AGE
quickstart   green    3       7.10.0    Ready   5m

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get elasticsearch -n elasticsearch
NAME         HEALTH   NODES   VERSION   PHASE   AGE
quickstart                                      2d22h
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

