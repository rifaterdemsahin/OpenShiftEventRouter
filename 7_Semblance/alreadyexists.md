@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ /workspaces/OpenShiftEventRouter/6_Symbols/run_manifest.sh
Error from server (AlreadyExists): error when creating "/workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml": elasticsearches.elasticsearch.k8s.elastic.co "quickstart" already exists
error: the path "/workspaces/OpenShiftEventRouter/6_Symbols.yaml" does not exist
Error from server (AlreadyExists): error when creating "/workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml": kibanas.kibana.k8s.elastic.co "quickstart" already exists
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ ^C
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

The errors indicate that the resources you are trying to create already exist in the Kubernetes cluster. To resolve this, you can either delete the existing resources before reapplying the manifests or update the existing resources.

To delete the existing resources, you can use the following commands:

```sh
kubectl delete -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
kubectl delete -f /workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml
```

After deleting the resources, you can rerun the manifest script:

```sh
/workspaces/OpenShiftEventRouter/6_Symbols/run_manifest.sh
```

Alternatively, if you want to update the existing resources, you can use the `kubectl apply` command instead of `kubectl create`:

```sh
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/kibana.yaml
```