@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ kubectl port-forward --namespace monitoring svc/elasticsearch 9200:9200
Forwarding from 127.0.0.1:9200 -> 9200
Forwarding from [::1]:9200 -> 9200
Handling connection for 9200
E1203 15:16:57.874306   97220 portforward.go:413] "Unhandled Error" err=<
        an error occurred forwarding 9200 -> 9200: error forwarding port 9200 to pod 91f7a80c972d27b8e46f1c16c85d1d3adc9a9669ad862071235f9aef6abf53ff, uid : exit status 1: 2024/12/03 15:16:57 socat[9512] E connect(5, AF=2 127.0.0.1:9200, 16): Connection refused
 >
error: lost connection to pod
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/5_Formula (main) $ 