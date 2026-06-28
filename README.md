# nginx-log-analyzer
This is a simple script which can help quickly fetch following data from an nginx log file (as given in the root dir):
- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

# Installation
Clone the repository:
```bash
git clone https://github.com/Mohammed-Aftab-Siddique/nginx-log-analyzer.git
```

Change directory:
```bash
cd nginx-log-analyzer
```

Provide executible permission to the script file:
```bash
chmod +x nginx-log-analyzer.sh
```

# Run the script
To run the script type `./nginx-log-analyzer.sh` and enjoy.

# Sample Output
```bash
Top 5 IP addresses with the most requests
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

Top 5 response status codes
200 - 5740 requests
404 - 937 requests
304 - 620 requests
400 - 192 requests
166 - 30 requests

Top 5 user agents
DigitalOcean Uptime Probe 0.22.0 (https://digitalocean.com) - 4347 requests
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 - 513 requests
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 - 332 requests
Custom-AsyncHttpClient - 294 requests
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 - 282 requests
```

## Project Page
URL: https://roadmap.sh/projects/nginx-log-analyser
