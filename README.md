# Mediapurkki
This is my simple setup for streaming media with Jellyfin, Docker and Nginx 
within my home network.

## Prerequisites
* Linux 
* Docker Compose

NOTE: While it is possible to run Jellyfin in Docker on a Windows or macOS host,
it is NOT supported. Some features are known to be broken when running in Docker 
on platforms other than Linux. [(docs)](https://jellyfin.org/docs/general/installation/container/#docker)

## Install
Set a fixed IP address for the computer used for streaming and preferably a 
local DNS record too. I am using a Ubiquiti UniFi Cloud Gateway router and have
set 'media.koti' as the local domain name.

Add environment variables:
```bash
cp .env-template .env
```

## Start streaming
If you have [just](https://github.com/casey/just) installed, you can start the 
services simply by running:
```bash
just start
```

Alternatively, without `just`, you can start the services by running:
```bash
docker compose up
```

Check the [justfile](./justfile) in the repo for additional commands.

Open `http://<your_local_domain_or_ip>` in your web browser (in my case, 
`http://media.koti`) and complete the Jellyfin setup. Then, connect your other
Jellyfin clients to the server. I primarily use the LG WebOS Jellyfin app on my
living room TV.
