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
