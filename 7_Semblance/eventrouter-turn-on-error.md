@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/
eventrouter.yaml
error: error validating "/workspaces/OpenShiftEventRouter/6_Symbols/eventrouter.yaml": error validating data: failed to download openapi: Get "https://192.168.49.2:8443/openapi/v2?timeout=32s": dial tcp 192.168.49.2:8443: connect: no route to host; if you choose to ignore these errors, turn validation off with --validate=false
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ minikube status
minikube
type: Control Plane
host: Stopped
kubelet: Stopped
apiserver: Stopped
kubeconfig: Stopped



