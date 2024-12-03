To deploy Fluentd and configure it to collect logs from the Event Router and forward them to Elasticsearch, follow these steps:

1. **Install Fluentd**:
   - The most common way to install Fluentd is via the `td-agent` package. You can install it using the following commands:

     ```sh
     curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent3.sh | sh
     sudo systemctl start td-agent
     sudo systemctl enable td-agent
     ```

2. **Configure Fluentd**:
   - Create a Fluentd configuration file to read logs from STDOUT and forward them to Elasticsearch. Here is an example configuration:

     ```sh
     sudo vi /etc/td-agent/td-agent.conf
     ```

     Add the following content to the configuration file:

     ```xml
     <source>
       @type tail
       path /var/log/containers/*_eventrouter_*.log
       pos_file /var/log/td-agent/eventrouter.pos
       tag kube.eventrouter
       format json
     </source>

     <match kube.eventrouter>
       @type elasticsearch
       host your-elasticsearch-host
       port 9200
       logstash_format true
       logstash_prefix eventrouter
       include_tag_key true
       type_name _doc
     </match>
     ```

     Replace `your-elasticsearch-host` with the actual hostname or IP address of your Elasticsearch instance.

3. **Restart Fluentd**:
   - After configuring Fluentd, restart the service to apply the changes:

     ```sh
     sudo systemctl restart td-agent
     ```

4. **Verify the Setup**:
   - Check the logs of the Fluentd service to ensure it is running correctly and forwarding events to Elasticsearch:

     ```sh
     sudo journalctl -u td-agent -f
     ```

By following these steps, Fluentd should be set up to collect logs from the Event Router and forward them to Elasticsearch[1](https://docs.openshift.com/container-platform/4.1/logging/config/efk-logging-fluentd.html)[2](https://www.digitalocean.com/community/tutorials/how-to-centralize-your-docker-logs-with-fluentd-and-elasticsearch-on-ubuntu-16-04)[3](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-elasticsearch-fluentd-and-kibana-efk-logging-stack-on-kubernetes). If you encounter any issues or need further assistance, feel free to ask!