When pasting a multiline configuration into a terminal using a cat <<EOF construct, it's crucial to ensure proper handling of multiline inputs. Here's a breakdown of how to fix your command:

Steps to Make Multiline cat <<EOF Work
Start the Command Properly: Type the following without pressing Enter prematurely:

cat <<EOF | kubectl apply -f -
Paste the Multiline Content: Paste your YAML configuration below this line. Ensure the pasted content maintains its formatting and indentation.

Example:

apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
  namespace: elasticsearch
spec:
  version: 7.10.0
  nodeSets:
  - name: default
    count: 1
    config:
      node.store.allow_mmap: false
End the Input with EOF: After pasting the content, type EOF at the very start of a new line, and then press Enter. For example:

EOF


>>>>>>>>> LAST STAGE!