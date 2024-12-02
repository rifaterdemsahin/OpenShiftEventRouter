@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl port-forward svc/kibana 5601:5601

Error from server: rpc error: code = Unavailable desc = keepalive ping failed to receive ACK within timeout
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

This error occurs because the connection to the Kubernetes API server was lost or interrupted. This can happen due to network issues, server overload, or incorrect configurations. To resolve this issue, you can try the following steps:

1. Check your network connection and ensure it is stable.
2. Verify that the Kubernetes API server is running and accessible.
3. Increase the keepalive timeout settings in your Kubernetes configuration.
4. Restart the `kubectl port-forward` command.

Example of increasing the keepalive timeout:

```sh
kubectl port-forward --keepalive-time=30s svc/kibana 5601:5601
```