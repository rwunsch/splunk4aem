# splunk4aem
This project should help easily set-up a SPLUNK-Docker instance to debug AEM

## TL;DR   
You should be able to create a local instance of SPLUNK for log analysis using these 3 simple commands:

```bash
git clone https://github.com/rwunsch/splunk4aem.git
cd splunk4aem
docker-compose up
```

## How to use this Splunk instance  
Given you have installed docker (and docker-compose).  
Simply checkout this repository, and change into the new folder:
```bash
git clone https://github.com/rwunsch/splunk4aem.git
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

## How to import/ingest logs into SPLUNK   

### Direct ingestion through "splunk-logs-share" folder   
Simply drop logs into the "splunk-logs-share" folder, a subfolder in the git-repository.
SPLUNK will ingest any log dropped into this folder.
WARN: the logs will be deleted from the folder once 

### Upload files through website  
You can upload files through the website:
> http://localhost:8000/en-US/manager/search/adddatamethods/selectsource?input_mode=0


## Resources  
- https://www.splunk.com/blog/2018/01/17/hands-on-lab-sandboxing-with-splunk-with-docker.html
- https://elatov.github.io/2017/09/using-splunk-with-docker/
- https://github.com/splunk/docker-splunk
- https://hub.docker.com/r/splunk/splunk/

## Caveats
### Docker for Windows and Cisco VPN   
Docker for Windows cannot access local folders (like the "splunk-logs-share"), as long as the Cisco VPN is being used.

#### First Workaround (did work forme)
Use the OpenConnect VPN client instead of the Cisco Anyconnect VPN Client:  
> https://github.com/openconnect/openconnect-gui/releases

#### Second Workaround - change network (did not work for me)    
> https://lukerogers.com/2018/09/22/docker-file-sharing-w-cisco-vpn/   

The blog above describes the issue, and proposes a solution (to set the network Docker communicates on to a private network). 