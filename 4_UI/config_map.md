apiVersion: v1
apiVersion: v1
data:
  key1: value1
  key2: value2
kind: ConfigMap
metadata:
  creationTimestamp: "2024-12-03T15:58:36Z"
  name: fluentd-config
  namespace: kube-system
  resourceVersion: "3045"
kubectl edit configmap fluentd-config -n kube-system  uid: 50d66524-8e28-4123-9f80-3094b0f24679