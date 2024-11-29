### **2. Deploy the OpenShift Event Router**

The OpenShift Event Router monitors the Kubernetes event stream and outputs the events to a specified sink, such as Elasticsearch.

1. **Add Event Router Image**:
   - The Event Router image is available at: `quay.io/openshift/origin-eventrouter`.

2. **Create a Deployment for the Event Router**:
   Save the following YAML into a file (e.g., `eventrouter.yaml`):

   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: eventrouter
     namespace: kube-system
   spec:
     replicas: 1
     selector:
       matchLabels:
         name: eventrouter
     template:
       metadata:
         labels:
           name: eventrouter
       spec:
         containers:
         - name: eventrouter
           image: quay.io/openshift/origin-eventrouter
           imagePullPolicy: Always
           env:
           - name: ROUTER_DEFAULT_LOG_LEVEL
             value: info
           - name: ELASTICSEARCH_HOST
             value: <elasticsearch_host> # Replace with your Elasticsearch endpoint
           - name: ELASTICSEARCH_PORT
             value: "9200" # Default Elasticsearch port
           - name: ELASTICSEARCH_INDEX
             value: "openshift-events" # Replace with your desired index name
           - name: ELASTICSEARCH_USER
             value: <username> # Optional if Elasticsearch requires authentication
           - name: ELASTICSEARCH_PASSWORD
             value: <password> # Optional if Elasticsearch requires authentication
         restartPolicy: Always
   ```

3. **Apply the Deployment**:
   ```bash
   oc apply -f eventrouter.yaml
   ```

---