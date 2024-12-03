To forward events in Minikube using the OpenShift Event Router to Elasticsearch, follow these steps:

1. **Deploy the Event Router**:
   - Create a template for the Event Router. This template will include the necessary service account, cluster role, cluster role binding, and deployment configuration.
   - Here is an example template you can use:

     ```yaml
     apiVersion: template.openshift.io/v1
     kind: Template
     metadata:
       name: eventrouter-template
       annotations:
         description: "A pod forwarding Kubernetes events to OpenShift Logging stack."
         tags: "events,EFK,logging,cluster-logging"
     objects:
       - apiVersion: v1
         kind: ServiceAccount
         metadata:
           name: eventrouter
           namespace: openshift-logging
       - apiVersion: rbac.authorization.k8s.io/v1
         kind: ClusterRole
         metadata:
           name: event-reader
         rules:
           - apiGroups: [""]
             resources: ["events"]
             verbs: ["get", "watch", "list"]
       - apiVersion: rbac.authorization.k8s.io/v1
         kind: ClusterRoleBinding
         metadata:
           name: event-reader-binding
         subjects:
           - kind: ServiceAccount
             name: eventrouter
             namespace: openshift-logging
         roleRef:
           kind: ClusterRole
           name: event-reader
       - apiVersion: v1
         kind: ConfigMap
         metadata:
           name: eventrouter
           namespace: openshift-logging
         data:
           config.json: |
             {
               "sink": "stdout"
             }
       - apiVersion: apps/v1
         kind: Deployment
         metadata:
           name: eventrouter
           namespace: openshift-logging
           labels:
             component: "eventrouter"
             logging-infra: "eventrouter"
             provider: "openshift"
         spec:
           selector:
             matchLabels:
               component: "eventrouter"
               logging-infra: "eventrouter"
               provider: "openshift"
           replicas: 1
           template:
             metadata:
               labels:
                 component: "eventrouter"
                 logging-infra: "eventrouter"
                 provider: "openshift"
             spec:
               serviceAccount: eventrouter
               containers:
                 - name: kube-eventrouter
                   image: registry.redhat.io/openshift-logging/eventrouter-rhel8:v0.3
                   imagePullPolicy: IfNotPresent
                   resources:
                     requests:
                       cpu: 100m
                       memory: 128Mi
                   volumeMounts:
                     - name: config-volume
                       mountPath: /etc/eventrouter
               volumes:
                 - name: config-volume
                   configMap:
                     name: eventrouter
     ```

2. **Deploy Fluentd**:
   - Ensure Fluentd is configured to collect logs from the Event Router and forward them to Elasticsearch. Fluentd should be set up to read from STDOUT where the Event Router writes the events.

3. **Configure Elasticsearch**:
   - Make sure Elasticsearch is running and accessible. Fluentd will forward the events to Elasticsearch, which will index them for querying.

4. **Verify the Setup**:
   - Check the logs of the Event Router and Fluentd pods to ensure they are running correctly and forwarding events to Elasticsearch.

By following these steps, you should be able to forward events from Minikube using the OpenShift Event Router to Elasticsearch[1](https://docs.openshift.com/container-platform/4.8/logging/cluster-logging-eventrouter.html)[2](https://coralogix.com/blog/kubernetes-logging-with-elasticsearch-fluentd-and-kibana/).

If you have any specific questions or run into issues, feel free to ask!