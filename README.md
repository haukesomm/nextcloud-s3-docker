# nextcloud-s3-docker

This repo contains a minimal docker-compose configuration to host a Nextcloud
instance with an S3 storage-backend.

In detail, it consists of the following services:
- Nginx reverse-proxy
- letsencrypt
- MariaDB database
- Nextcloud

## Setup

It is assumed that you already have a working Docker installation on your 
server.

1) Create a copy of `config.tmp` named `config` and adjust the settings to your needs
2) Run `setup.sh`

## Known issues

- In order to be able to sign in from the iOS app, the following line needs to
be added to `app/config/config.php` manually:  
`- NEXTCLOUD_OVERWRITEPROTOCOL=https`
    - See https://github.com/nextcloud/docker/pull/819 for more information