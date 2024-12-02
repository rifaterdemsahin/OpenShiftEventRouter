@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $   kubectl port-forward --namespace monitoring svc/elasticsearch 9200:9200 &
[1] 22460
1:9200/@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $     curl http://127.0.0.1:9200/error: unable to forward port because pod is not running. Current status=Pending


