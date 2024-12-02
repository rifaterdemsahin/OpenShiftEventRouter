@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile

💣  Exiting due to PROVIDER_DOCKER_NOT_RUNNING: "docker version --format <no value>-<no value>:<no value>" exit status 1: Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
💡  Suggestion: Start the Docker service
📘  Documentation: https://minikube.sigs.k8s.io/docs/drivers/docker/

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube delete
🔥  Deleting "minikube" in docker ...
🔥  Deleting container "minikube" ...
🔥  Removing /home/codespace/.minikube/machines/minikube ...
💀  Removed all traces of the "minikube" cluster.
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Automatically selected the docker driver. Other choices: none, ssh
📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔥  Creating docker container (CPUs=2, Memory=3900MB) ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔗  Configuring bridge CNI (Container Networking Interface) ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml
Error from server (NotFound): error when creating "/workspaces/OpenShiftEventRouter/6_Symbols/infra/elasticsearch.yaml": the server could not find the requested resource (post elasticsearches.elasticsearch.k8s.elastic.co)
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ helm repo add bitnami https://charts.bitnami.com/bitnami

"bitnami" has been added to your repositories
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ helm repo update
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "bitnami" chart repository
Update Complete. ⎈Happy Helming!⎈
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ helm install elasticsearch bitnami/elasticsearch
NAME: elasticsearch
LAST DEPLOYED: Mon Dec  2 13:57:27 2024
NAMESPACE: default
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

  Elasticsearch can be accessed within the cluster on port 9200 at elasticsearch.default.svc.cluster.local

  To access from outside the cluster execute the following commands:

    kubectl port-forward --namespace default svc/elasticsearch 9200:9200 &
    curl http://127.0.0.1:9200/


WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - coordinating.resources
  - copyTlsCerts.resources
  - data.resources
  - ingest.resources
  - master.resources
  - sysctlImage.resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ helm install kibana bitnami/kibana

NAME: kibana
LAST DEPLOYED: Mon Dec  2 13:57:49 2024
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: kibana
CHART VERSION: 11.3.2
APP VERSION: 8.16.1

** Please be patient while the chart is being deployed **######################################################################################################
### ERROR: You did not provide the Elasticsearch external host or port in your 'helm install' call ###
######################################################################################################

Complete your Kibana deployment by running:

  helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana \
    --set elasticsearch.hosts[0]=YOUR_ES_HOST,elasticsearch.port=YOUR_ES_PORT

Replacing "YOUR_ES_HOST" and "YOUR_ES_PORT" placeholders by the proper values of your Elasticsearch deployment.

WARNING: There are "resources" sections in the chart not set. Using "resourcesPreset" is not recommended for production. For production installations, please set the following values according to your workload needs:
  - resources
+info https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get pods
NAME                           READY   STATUS     RESTARTS   AGE
elasticsearch-coordinating-0   0/1     Init:1/2   0          37s
elasticsearch-coordinating-1   0/1     Init:1/2   0          37s
elasticsearch-data-0           0/1     Init:1/2   0          37s
elasticsearch-data-1           0/1     Pending    0          37s
elasticsearch-ingest-0         0/1     Init:1/2   0          37s
elasticsearch-ingest-1         0/1     Init:1/2   0          37s
elasticsearch-master-0         0/1     Init:1/2   0          37s
elasticsearch-master-1         0/1     Pending    0          37s


@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get pods -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS        AGE
default       elasticsearch-coordinating-0       0/1     Running   0               90s
default       elasticsearch-coordinating-1       0/1     Running   0               90s
default       elasticsearch-data-0               0/1     Running   0               90s
default       elasticsearch-data-1               0/1     Pending   0               90s
default       elasticsearch-ingest-0             0/1     Running   0               90s
default       elasticsearch-ingest-1             0/1     Running   0               90s
default       elasticsearch-master-0             0/1     Running   0               90s
default       elasticsearch-master-1             0/1     Pending   0               90s
kube-system   coredns-6f6b679f8f-nktwf           1/1     Running   0               6m2s
kube-system   etcd-minikube                      1/1     Running   0               6m8s
kube-system   kube-apiserver-minikube            1/1     Running   0               6m7s
kube-system   kube-controller-manager-minikube   1/1     Running   0               6m7s
kube-system   kube-proxy-lsdlv                   1/1     Running   0               6m1s
kube-system   kube-scheduler-minikube            1/1     Running   0               6m7s
kube-system   storage-provisioner                1/1     Running   1 (5m28s ago)   6m