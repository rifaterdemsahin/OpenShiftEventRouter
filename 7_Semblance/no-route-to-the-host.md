@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
error: error validating "/workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml": error validating data: failed to download openapi: Get "https://192.168.49.2:8443/openapi/v2?timeout=32s": dial tcp 192.168.49.2:8443: connect: no route to host; if you choose to ignore these errors, turn validation off with --validate=false
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube status
minikube
type: Control Plane
host: Stopped
kubelet: Stopped
apiserver: Stopped
kubeconfig: Stopped

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
error: error validating "/workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml": error validating data: failed to download openapi: Get "https://192.168.49.2:8443/openapi/v2?timeout=32s": dial tcp 192.168.49.2:8443: connect: no route to host; if you choose to ignore these errors, turn validation off with --validate=false
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube status
minikube
type: Control Plane
host: Stopped
kubelet: Stopped
apiserver: Stopped
kubeconfig: Stopped

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔄  Restarting existing docker container for "minikube" ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl apply -f /workspaces/OpenShiftEventRouter/6_Symbols/elasticsearch.yaml
elasticsearch.elasticsearch.k8s.elastic.co/quickstart configured