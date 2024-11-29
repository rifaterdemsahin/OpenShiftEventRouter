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

### **2. Deploy Elasticsearch and Kibana on Minikube**

1. **Start Minikube**:
    ```sh
    minikube start
    ```

2. **Deploy Elasticsearch**:
    ```sh
    kubectl create namespace elasticsearch
    kubectl apply -f https://download.elastic.co/downloads/eck/2.0.0/all-in-one.yaml
    cat <<EOF | kubectl apply -f -
    apiVersion: elasticsearch.k8s.elastic.co/v1
    kind: Elasticsearch
    metadata:
      name: quickstart
      namespace: elasticsearch
    spec:
      version: 7.10.0
      nodeSets:
      - name: default
         count: 1
         config:
            node.store.allow_mmap: false
    EOF
    ```


@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl apply -f elasticsearch.yaml 
elasticsearch.elasticsearch.k8s.elastic.co/quickstart created


3. **Deploy Kibana**:
    ```sh
    cat <<EOF | kubectl apply -f -
    apiVersion: kibana.k8s.elastic.co/v1
    kind: Kibana
    metadata:
      name: quickstart
      namespace: elasticsearch
    spec:
      version: 7.10.0
      count: 1
      elasticsearchRef:
         name: quickstart
    EOF
    ```

@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter/6_Symbols (main) $ kubectl apply -f kibana.yaml 
kibana.kibana.k8s.elastic.co/quickstart created

4. **Access Kibana**:
    ```sh
    kubectl port-forward service/quickstart-kb-http 5601 -n elasticsearch
    ```

5. **Create an Index in Elasticsearch**:
    - Open Kibana in your browser at `http://localhost:5601`.
    - Navigate to **Management > Index Patterns**.
    - Create a new index pattern, e.g., `openshift-events`.

---

### **3. Configure OpenShift Event Router**

1. **Deploy the Event Router**:
    ```sh
    oc new-project openshift-logging
    oc apply -f https://raw.githubusercontent.com/openshift/origin/master/examples/logging/eventrouter.yaml
    ```

2. **Configure Event Router to Send Logs to Elasticsearch**:
    - Edit the `eventrouter` deployment to include the Elasticsearch endpoint and credentials.
    ```sh
    oc edit deployment eventrouter -n openshift-logging
    ```
    - Update the `--log-es` argument with your Elasticsearch endpoint, e.g., `--log-es=https://<elasticsearch-endpoint>:9200`.

---

### **4. Verify the Setup**

1. **Check Event Router Logs**:
    ```sh
    oc logs -f deployment/eventrouter -n openshift-logging
    ```

2. **Verify Events in Kibana**:
    - Go to Kibana and search for the `openshift-events` index to see the logged events.