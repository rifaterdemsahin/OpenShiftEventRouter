install with bitnami
turn it on with portforwarding
install the component >>> EventRouter >>> minikube 
send the events 
Filter the events

Yes, you can install the EventRouter on Minikube and push Minikube events to Elasticsearch. Here's a high-level overview of the steps involved:

1. **Set Up Minikube**: Ensure you have Minikube installed and running. You can start Minikube with sufficient resources using:
   ```sh
   minikube start --memory=4096 --cpus=2
   ```

2. **Install EventRouter**: Deploy the EventRouter to your Minikube cluster. You can use a Kubernetes manifest file for this. Create a file named `eventrouter.yaml` with the following content:
   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: eventrouter
   spec:
     replicas: 1
     selector:
       matchLabels:
         app: eventrouter
     template:
       metadata:
         labels:
           app: eventrouter
       spec:
         containers:
         - name: eventrouter
           image: gcr.io/google-containers/eventrouter:latest
           env:
           - name: ROUTER_TYPE
             value: "elasticsearch"
           - name: ELASTICSEARCH_HOST
             value: "http://elasticsearch.default.svc.cluster.local:9200"
   ```

3. **Deploy Elasticsearch**: You can deploy Elasticsearch on Minikube using Helm or a Kubernetes manifest. Here's an example using Helm:
   ```sh
   helm repo add elastic https://helm.elastic.co
   helm install elasticsearch elastic/elasticsearch
   ```

4. **Configure EventRouter**: Ensure the EventRouter is configured to send events to your Elasticsearch instance. The `ELASTICSEARCH_HOST` environment variable in the `eventrouter.yaml` file should point to your Elasticsearch service.

5. **Apply the Configurations**: Apply the EventRouter deployment and ensure everything is running smoothly:
   ```sh
   kubectl apply -f eventrouter.yaml
   ```

This setup will allow the EventRouter to capture events from your Minikube cluster and push them to Elasticsearch for further analysis[1](https://www.elastic.co/blog/getting-started-with-elastic-cloud-on-kubernetes-deployment)[2](https://fusionauth.io/docs/get-started/download-and-install/kubernetes/minikube)[3](https://phoenixnap.com/kb/elasticsearch-kubernetes).

If you encounter any issues or need more detailed instructions, feel free to ask!