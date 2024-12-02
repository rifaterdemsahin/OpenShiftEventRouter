minikube start
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🏃  Updating the running docker "minikube" container ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get po -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS      AGE
kube-system   coredns-6f6b679f8f-pnqqm           1/1     Running   4 (29m ago)   4d
kube-system   etcd-minikube                      1/1     Running   4 (29m ago)   4d
kube-system   kube-apiserver-minikube            1/1     Running   4 (29m ago)   4d
kube-system   kube-controller-manager-minikube   1/1     Running   5 (29m ago)   4d
kube-system   kube-proxy-zm962                   1/1     Running   4 (29m ago)   4d
kube-system   kube-scheduler-minikube            1/1     Running   4 (29m ago)   4d
kube-system   storage-provisioner                0/1     Error     8 (29m ago)   4d
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

