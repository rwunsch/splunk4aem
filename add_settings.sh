INPUTS_CONF=/opt/splunk/etc/system/local/inputs_rw.conf

# Write config to monitor /mnt/splunk for logs
sudo mkdir -p /opt/splunk/etc/system/local
sudo bash -c "touch $INPUTS_CONF"
sudo bash -c "echo [monitor:///mnt/splunk] >> $INPUTS_CONF"
sudo bash -c "echo disabled = false >> $INPUTS_CONF"
sudo bash -c "echo host = aem  >> $INPUTS_CONF"
sudo bash -c "cat $INPUTS_CONF"