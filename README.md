# OpenShiftEventRouter
 Using the OpenShift Event Router to log cluster events into Elasticsearch for querying and visualization in Kibana is a powerful way to monitor and analyze your OpenShift cluster's state

---

### **1. Set Up Elasticsearch and Kibana**

1. **Deploy Elasticsearch**:
   - Use an Elasticsearch cluster (self-hosted or managed service like Elastic Cloud).
   - Ensure it has an endpoint that OpenShift can send logs to, along with appropriate credentials.

2. **Deploy Kibana**:
   - Install Kibana and configure it to connect to your Elasticsearch instance.

3. **Create an Index**:
   - Pre-create an index in Elasticsearch for OpenShift events, such as `openshift-events`.

---

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

### **3. Verify Logs in Elasticsearch**

1. **Query Elasticsearch**:
   Test Elasticsearch to ensure events are being received:
   ```bash
   curl -X GET "<elasticsearch_host>:9200/openshift-events/_search" -u <username>:<password>
   ```

2. **Ensure Index Creation**:
   Verify that the index `openshift-events` exists:
   ```bash
   curl -X GET "<elasticsearch_host>:9200/_cat/indices?v"
   ```

---

### **4. Configure Kibana to Visualize Events**

1. **Connect to Elasticsearch**:
   - Go to Kibana and navigate to **Management > Stack Management > Index Patterns**.
   - Create an index pattern matching `openshift-events`.

2. **Visualize Events**:
   - Use **Discover** to query logs.
   - Create visualizations and dashboards for monitoring events like pod creation, errors, and warnings.

---

### **5. Monitor and Optimize**

- **Event Volume**: OpenShift generates a lot of events, so consider filtering or limiting event types logged.
- **Retention Policy**: Configure Elasticsearch to delete old logs to save storage.
- **Security**: Ensure the connection to Elasticsearch uses TLS if it's exposed.

---
