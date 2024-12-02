@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ /workspaces/OpenShiftEventRouter/6_Symbols/git_push.sh "updates"
Already up to date.
[main b59822f] Self Learning Project / Codespaces Push
 Author: Erdem <rifaterdemsahin@gmail.com>
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 4_UI/before_destroy_git_no_code_Changes.png
 create mode 100644 4_UI/devcontainer_setup.png
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 4 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 50.92 KiB | 25.46 MiB/s, done.
Total 5 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/rifaterdemsahin/OpenShiftEventRouter
   a79734b..b59822f  main -> main
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube start --cpus=4 --memory=4g --driver=docker
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on user configuration
📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
💾  Downloading Kubernetes v1.31.0 preload ...
    > gcr.io/k8s-minikube/kicbase...:  487.90 MiB / 487.90 MiB  100.00% 194.98 
    > preloaded-images-k8s-v18-v1...:  326.69 MiB / 326.69 MiB  100.00% 42.36 M
🔥  Creating docker container (CPUs=4, Memory=4096MB) ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔗  Configuring bridge CNI (Container Networking Interface) ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

Second Start
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $    minikube start --cpus=4 --memory=4g --driver=docker
😄  minikube v1.34.0 on Ubuntu 20.04 (docker/amd64)
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.45 ...
🔄  Restarting existing docker container for "minikube" ...
🐳  Preparing Kubernetes v1.31.0 on Docker 27.2.0 ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: default-storageclass, storage-provisioner
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

