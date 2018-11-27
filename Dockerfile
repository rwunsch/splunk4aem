## Dockerized SPLUNK image
FROM splunk/splunk:latest
 
COPY add_settings.sh /
RUN sudo chmod +x /add_settings.sh 
RUN	/add_settings.sh