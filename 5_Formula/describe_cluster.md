@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $     kubectl describe elasticsearch quickstart -n elasticsearch
Name:         quickstart
Namespace:    elasticsearch
Labels:       <none>
Annotations:  <none>
API Version:  elasticsearch.k8s.elastic.co/v1
Kind:         Elasticsearch
Metadata:
  Creation Timestamp:  2024-11-29T13:58:39Z
  Generation:          2
  Resource Version:    6898
  UID:                 7564b08f-e61c-456a-83e9-580d857e70b9
Spec:
  Node Sets:
    Config:
      node.store.allow_mmap:  false
    Count:                    3
    Name:                     default
  Version:                    7.10.0
Events:                       <none>


