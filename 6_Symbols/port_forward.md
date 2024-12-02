To set up port forwarding for Elastic and Kibana, use the following commands:

```sh
helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200

kubectl port-forward svc/elasticsearch 9200:9200 --namespace monitoring

kubectl port-forward svc/kibana 5601:5601 --namespace monitoring

```

kubectl port-forward svc/kibana 5601:5601

