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



@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearchservice.yaml
error: error parsing /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearchservice.yaml: error converting YAML to JSON: yaml: line 11: mapping values are not allowed in this context

after /fix yaml with copilot

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearchservice.yaml
service/quickstart-es-http created
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

