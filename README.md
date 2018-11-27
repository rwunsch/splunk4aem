# splunk4aem
This project should help easily set-up a SPLUNK-Docker instance to debug AEM

## How to use this Splunk instance  
Given you have installed docker (and docker-compose).  
Simply checkout this repository, and change into the new folder:
```bash
git clone git@github.com:rwunsch/splunk4aem.git
cd splunk4aem
```
The folder structure will be something like:
```
.
├── docker-compose.yml
├── LICENSE
├── README.md
└── splunk-logs-share
    └── Drop_Logs_for_Analysis_HERE.txt
```
Start the SPLUNK instance by typing:
```bash
docker-compose up
```
Now wait until the instance is ready to use (reload the webpage):
> http://localhost:8000

Once the webpage is available, log in:
- Username: admin
- Password: password

Now you can ingest any log-file by adding it to the subfolder "splunk-logs-share".   
Once the log-file is ingested, the log-file will be removed/deleted (!).

On the web-interface you can start


## Resources  
- https://www.splunk.com/blog/2018/01/17/hands-on-lab-sandboxing-with-splunk-with-docker.html
- https://elatov.github.io/2017/09/using-splunk-with-docker/
- https://github.com/splunk/docker-splunk
- https://hub.docker.com/r/splunk/splunk/

## Caveats
### Docker for Windows and Cisco VPN   
Docker for Windows cannot access local folders (like the "splunk-logs-share"), as long as the Cisco VPN is being used.
> https://lukerogers.com/2018/09/22/docker-file-sharing-w-cisco-vpn/   

The blog above describes the issue, and proposes a solution (to set the network Docker communicates on to a private network). 