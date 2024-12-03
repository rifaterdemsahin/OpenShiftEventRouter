@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ kubectl create configmap fluentd-config -n kube-system --from-literal=key1=value1 --from-literal=key2=value2
configmap/fluentd-config created
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ kubectl get configmap fluentd-config -n kube-system
NAME             DATA   AGE
fluentd-config   2      9s
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ 