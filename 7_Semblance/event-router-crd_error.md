@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/eventrouter.yaml
error: resource mapping not found for name: "eventrouter-template" namespace: "" from "/workspaces/OpenShiftEventRouter/6_Symbols/eventrouter.yaml": no matches for kind "Template" in version "template.openshift.io/v1"
ensure CRDs are installed first
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 

The error message indicates that the `Template` kind in the `template.openshift.io/v1` API version isn't recognized. This typically happens when the Custom Resource Definitions (CRDs) for OpenShift templates aren't installed.

Here are the steps to resolve this issue:

1. **Install the OpenShift Template CRD**:
   Ensure that the CRD for OpenShift templates is installed in your cluster. You can do this by applying the CRD manifest. If you don't have the manifest, you can find it in the OpenShift documentation or repository.

   ```sh
   kubectl apply -f https://raw.githubusercontent.com/openshift/api/master/template/v1/0000_50_template.crd.yaml
   ```

2. **Verify the CRD Installation**:
   After applying the CRD, verify that it has been installed correctly:

   ```sh
   kubectl get crd templates.template.openshift.io
   ```
   @rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ kubectl get crd templates.template.openshift.iokubectl get crd templates.template.openshift.io
Error from server (NotFound): customresourcedefinitions.apiextensions.k8s.io "templates.template.openshift.iokubectl" not found
Error from server (NotFound): customresourcedefinitions.apiextensions.k8s.io "get" not found
Error from server (NotFound): customresourcedefinitions.apiextensions.k8s.io "crd" not found
Error from server (NotFound): customresourcedefinitions.apiextensions.k8s.io "templates.template.openshift.io" not found
@rifaterdemsahin ➜ /workspaces/OpenShiftEventRouter (main) $ 


   You should see the CRD listed if it was installed successfully.

3. **Retry Your Command**:
   Once the CRD is installed, retry your original command:

   ```sh
   kubectl create -f /workspaces/OpenShiftEventRouter/6_Symbols/eventrouter.yaml
   ```

If you continue to face issues, please ensure that your cluster has the necessary permissions and that the API server is reachable. Let me know if you need further assistance!