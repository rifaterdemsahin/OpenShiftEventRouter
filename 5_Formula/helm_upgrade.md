  helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana \
    --set elasticsearch.hosts[0]=YOUR_ES_HOST,elasticsearch.port=YOUR_ES_PORT

    ```bash
    --set service.type=NodePort \
    --set service.nodePort=30007 \
    --set elasticsearch.hosts[0]=http://host.minikube.internal \
    --set elasticsearch.port=9200
    ```

    ```bash
    helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana \
        --set elasticsearch.hosts[0]=YOUR_ES_HOST \
        --set elasticsearch.port=YOUR_ES_PORT
    ```


    ```bash
    helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana \
        --set service.type=NodePort \
        --set service.nodePort=30007 \
        --set elasticsearch.hosts[0]=http://host.minikube.internal \
        --set elasticsearch.port=9200
    ```
prompt: write a single liner

    ```bash
    helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200
    ```