Sure, here's a step-by-step guide on how to manually download the CRD manifest from the OpenShift GitHub repository:

1. **Navigate to the OpenShift API Repository**:
   Open your web browser and go to the OpenShift API GitHub repository.
   https://github.com/openshift/api


2. **Locate the Template Directory**:
   In the repository, navigate to the `template/v1` directory. You can do this by clicking through the folders in the repository.

https://github.com/openshift/api/tree/master/template/v1

3. **Find the CRD File**:
   Look for the CRD file named `0000_50_template.crd.yaml` or a similar name within the `template/v1` directory.

not template > https://github.com/openshift/api/blob/58d4ac495429da1a858603d0b3417569cc32e79e/example/v1/0000_50_stabletype-Default.crd.yaml#L4

there is payload manifests
https://github.com/openshift/api/tree/58d4ac495429da1a858603d0b3417569cc32e79e/payload-manifests/crds


4. **Download the CRD File**:
   Once you find the file, click on it to view its contents. There should be a "Raw" button that you can click to see the raw YAML content. Right-click on the page and select "Save As..." to download the file to your local machine.

5. **Apply the CRD File**:
   After downloading the file, you can apply it to your Kubernetes cluster using the following command:
   ```sh
   kubectl apply -f path/to/your/downloaded/0000_50_template.crd.yaml
   ```

6. **Verify Installation**:
   Finally, verify that the CRD has been installed correctly:
   ```sh
   kubectl get crd templates.template.openshift.io
   ```

If you encounter any issues or need further assistance, feel free to ask!