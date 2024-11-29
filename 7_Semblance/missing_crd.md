@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ cat <<EOF | kubectl apply -f -
> apiVersion: elasticsearch.k8s.elastic.co/v1
> kind: Elasticsearch
> metadata:
>   namespace: elasticsearch
> spec:
>   version: 7.10.0
>   nodeSets:
>   - name: default
>     count: 1
>     config:
>       node.store.allow_mmap: false
> EOF
error: resource mapping not found for name: "" namespace: "elasticsearch" from "STDIN": no matches for kind "Elasticsearch" in version "elasticsearch.k8s.elastic.co/v1"
ensure CRDs are installed first
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ ^C
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 


To solve this issue, you need to install the Custom Resource Definitions (CRDs) for Elasticsearch first. You can do this by applying the CRD manifest provided by Elastic. Here is an example of how to install the CRDs:

```sh
kubectl apply -f https://download.elastic.co/downloads/eck/1.7.1/crds.yaml
```

After installing the CRDs, you can apply your Elasticsearch manifest again:

```sh
kubectl apply -f - <<EOF
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
    namespace: elasticsearch
spec:
    version: 7.10.0
    nodeSets:
    - name: default
        count: 1
        config:
            node.store.allow_mmap: false
EOF
```