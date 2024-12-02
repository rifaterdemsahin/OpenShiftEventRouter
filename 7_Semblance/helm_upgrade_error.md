@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $     helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200 --timeout 10m
Pulled: registry-1.docker.io/bitnamicharts/kibana:11.3.2
Digest: sha256:b0835eb073a52a69e1dc538965c1f152e5c81ca501ff975247940de4cb5863b8

