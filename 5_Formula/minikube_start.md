@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Automatically selected the docker driver. Other choices: none, ssh
📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
💾  Downloading Kubernetes v1.31.0 preload ...
    > gcr.io/k8s-minikube/kicbase...:  487.90 MiB / 487.90 MiB  100.00% 210.27 
    > preloaded-images-k8s-v18-v1...:  326.69 MiB / 326.69 MiB  100.00% 45.72 M
🔥  Creating docker container (CPUs=2, Memory=8000MB) ...

To start Minikube with more RAM, you can specify the `--memory` option followed by the amount of RAM you want to allocate. For example, to allocate 16GB of RAM, you can use the following command:

```sh
minikube start --memory=16384
```

This will start Minikube with 16GB of RAM instead of the default allocation.

```sh
minikube start --memory=32768
```
```sh
minikube start --memory=16384
```

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 


@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube delete
🔥  Deleting "minikube" in docker ...
🔥  Deleting container "minikube" ...
🔥  Removing /home/codespace/.minikube/machines/minikube ...
💀  Removed all traces of the "minikube" cluster.
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start --memory=32084
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Automatically selected the docker driver. Other choices: none, ssh

🧯  The requested memory allocation of 32084MiB does not leave room for system overhead (total system memory: 32084MiB). You may face stability issues.
💡  Suggestion: Start minikube with less memory allocated: 'minikube start --memory=8000mb'

📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔥  Creating docker container (CPUs=2, Memory=32084MB) ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
top - 15:03:46 up  4:10,  0 users,  load average: 0.95, 1.18, 0.86
Tasks:  59 total,   1 running,  58 sleeping,   0 stopped,   0 zombie
%Cpu(s):  2.1 us,  2.3 sy,  0.0 ni, 95.5 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :  32084.0 total,    443.4 free,   2935.5 used,  28705.2 buff/cache
MiB Swap:      0.0 total,      0.0 free,      0.0 used.  28603.0 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                  
  15848 root      20   0 2577500 103192  55168 S   9.0   0.3   0:02.66 dockerd                                                                                                                  
  16865 root      20   0 1452696 252648  72832 S   2.3   0.8   0:06.56 kube-apiserver                                                                                                           
  17021 root      20   0 2339656  97316  60288 S   2.3   0.3   0:02.51 kubelet                                                                                                                  
  16118 root      20   0 1277076  50360  32000 S   1.0   0.2   0:01.13 cri-dockerd                                                                                                              
  16874 root      20   0   11.2g  48888  20864 S   1.0   0.1   0:03.06 etcd                                                                                                                     
   3541 codespa+  20   0   32.7g   1.0g  56320 S   0.7   3.2   1:03.67 node                                                                                                                     
  16873 root      20   0 1312568 110276  64512 S   0.7   0.3   0:02.36 kube-controller                                                                                                          
   3561 codespa+  20   0   11.1g  65608  44416 S   0.3   0.2   0:01.19 node          