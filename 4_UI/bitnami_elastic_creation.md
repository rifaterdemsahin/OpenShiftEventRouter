@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ helm install elasticsearch bitnami/elasticsearch --namespace monitoring
NAME: elasticsearch
LAST DEPLOYED: Tue Dec  3 15:15:15 2024
NAMESPACE: monitoring
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: elasticsearch
CHART VERSION: 21.3.26
APP VERSION: 8.16.1

-------------------------------------------------------------------------------
 WARNING

    Elasticsearch requires some changes in the kernel of the host machine to
    work as expected. If those values are not set in the underlying operating
    system, the ES containers fail to boot with ERROR messages.

    More information about these requirements can be found in the links below:

      https://www.elastic.co/guide/en/elasticsearch/reference/current/file-descriptors.html
      https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html

    This chart uses a privileged initContainer to change those settings in the Kernel
    by running: sysctl -w vm.max_map_count=262144 && sysctl -w fs.file-max=65536

** Please be patient while the chart is being deployed **

  Elasticsearch can be accessed within the cluster on port 9200 at elasticsearch.monitoring.svc.cluster.local

  To access from outside the cluster execute the following commands:

    kubectl port-forward --namespace monitoring svc/elasticsearch 9200:9200 &
    curl http://127.0.0.1:9200/


WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - coordinating.resources
  - copyTlsCerts.resources
  - data.resources
  - ingest.resources
  - master.resources
  - sysctlImage.resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ 