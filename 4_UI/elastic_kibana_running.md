@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ helm upgrade --namespace monitoring kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200
Pulled: registry-1.docker.io/bitnamicharts/kibana:11.3.2
Digest: sha256:b0835eb073a52a69e1dc538965c1f152e5c81ca501ff975247940de4cb5863b8
Release "kibana" has been upgraded. Happy Helming!
NAME: kibana
LAST DEPLOYED: Mon Dec  2 15:08:10 2024
NAMESPACE: monitoring
STATUS: deployed
REVISION: 2
TEST SUITE: None
NOTES:
CHART NAME: kibana
CHART VERSION: 11.3.2
APP VERSION: 8.16.1

** Please be patient while the chart is being deployed **

1. Get the application URL by running these commands:
  export NODE_PORT=$(kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services kibana)
  export NODE_IP=$(kubectl get nodes --namespace monitoring -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT

WARNING: Kibana is externally accessible from the cluster but the dashboard does not contain authentication mechanisms. Make sure you follow the authentication guidelines in your Elastic stack.
+info https://www.elastic.co/guide/en/elasticsearch/reference/current/setting-up-authentication.html

WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get pods --namespace monitoring
NAME                           READY   STATUS    RESTARTS   AGE
elasticsearch-coordinating-0   1/1     Running   0          4m16s
elasticsearch-coordinating-1   1/1     Running   0          4m16s
elasticsearch-data-0           1/1     Running   0          4m16s
elasticsearch-data-1           1/1     Running   0          4m16s
elasticsearch-ingest-0         1/1     Running   0          4m16s
elasticsearch-ingest-1         1/1     Running   0          4m16s
elasticsearch-master-0         1/1     Running   0          4m16s
elasticsearch-master-1         1/1     Running   0          4m16s
kibana-68cb46cb69-w4xzl        0/1     Running   0          58s
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 