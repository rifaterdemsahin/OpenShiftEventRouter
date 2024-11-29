@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl apply -f elasticsearch.yaml 
elasticsearch.elasticsearch.k8s.elastic.co/quickstart unchanged
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl apply -f kibana.yaml 
kibana.kibana.k8s.elastic.co/quickstart unchanged
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ 

# Check the status of the applied resources
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl get elasticsearch
NAME         HEALTH   NODES   VERSION   PHASE   AGE
quickstart   green    1       7.10.1    Ready   10m

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl get kibana
NAME         HEALTH   NODES   VERSION   PHASE   AGE
quickstart   green    1       7.10.1    Ready   10m

# Check for any events or errors
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl describe elasticsearch quickstart
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl describe kibana quickstart




