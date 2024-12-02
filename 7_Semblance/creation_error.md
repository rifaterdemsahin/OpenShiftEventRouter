@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml
Error from server (NotFound): error when creating "/workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml": the server could not find the requested resource (post elasticsearches.elasticsearch.k8s.elastic.co)

The problem is caused by incorrect indentation in the YAML content. To fix this, ensure proper indentation for the YAML content.

kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml


rifaterdemsahin: how to solve it append down below

GitHub Copilot: The problem is caused by incorrect indentation in the YAML content. To fix this, ensure proper indentation for the YAML content.



Made changes.

rifaterdemsahin: @rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml
Error from server (NotFound): error when creating "/workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml": the server could not find the requested resource (post elasticsearches.elasticsearch.k8s.elastic.co)

The problem is caused by incorrect indentation in the YAML content. To fix this, ensure proper indentation for the YAML content.

GitHub Copilot: The error message indicates that the server could not find the requested resource. This might not be related to YAML indentation but rather to the resource type or API version being incorrect or unavailable.

Here are steps to troubleshoot and fix the issue:

1. **Check the API Version and Kind**: Ensure that the `elasticsearch.yaml` file has the correct API version and kind for the Elasticsearch resource.

2. **Verify Resource Availability**: Make sure that the Elasticsearch Custom Resource Definition (CRD) is installed on your Kubernetes cluster.

3. **Correct YAML Indentation**: Ensure that the YAML file is correctly indented.

Here is an example of a correctly formatted Elasticsearch resource YAML:

```yaml
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
  name: quickstart
spec:
  version: 7.10.0
  nodeSets:
  - name: default
    count: 1
    config:
      node.store.allow_mmap: false
```

4. **Apply the YAML File**: Use `kubectl apply` instead of `kubectl create` to apply the configuration.

```sh
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml
```

If the issue persists, verify that the Elasticsearch operator is installed and running in your cluster.
