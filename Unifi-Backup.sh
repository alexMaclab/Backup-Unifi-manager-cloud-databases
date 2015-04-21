#!/bin/sh

## define required variables
export username=Admin_username
export password=Admin_password
export baseurl=URL_of_manager
export site=Site_name

## include the API library
. unifi_sh_api

unifi_login
unifi_backup
unifi_logout
uuencode unifi-`date +%Y%m%d`.unf backup-unifi-`date +%Y%m%d`.unf | mail -s "Backup Unifi" your@email.here