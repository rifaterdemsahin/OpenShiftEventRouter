@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ cat <<EOF | kubectl apply -f -
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
  name: quickstart
  namespace: elasticsearch
spec:
  version: 7.10.0
  nodeSets:
  - name: default
    count: 1
    config:
      node.store.allow_mmap: false
EOF
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml




