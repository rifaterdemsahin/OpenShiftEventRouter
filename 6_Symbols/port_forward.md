## 🚀 Setting Up Port Forwarding for Elastic and Kibana

To set up port forwarding for Elastic and Kibana, use the following commands:

```sh
helm upgrade --namespace default kibana oci://registry-1.docker.io/bitnamicharts/kibana --set service.type=NodePort --set service.nodePort=30007 --set elasticsearch.hosts[0]=http://host.minikube.internal --set elasticsearch.port=9200

kubectl port-forward svc/elasticsearch 9200:9200 --namespace monitoring

kubectl port-forward svc/kibana 5601:5601 --namespace monitoring
```

```sh
kubectl port-forward svc/kibana 5601:5601
```

### 📝 Explanation

- **Helm Upgrade Command**: This command upgrades Kibana using Helm, setting it up with a NodePort service type and configuring the connection to Elasticsearch.
- **Port Forwarding for Elasticsearch**: This command forwards port 9200 from the Elasticsearch service to your local machine.
- **Port Forwarding for Kibana**: This command forwards port 5601 from the Kibana service to your local machine.

Using emojis makes the content more engaging and visually appealing. The markdown structure helps in organizing the content clearly.

prompts:
    - rewrite with emojis
    - use markdown structure
    - explain rationale