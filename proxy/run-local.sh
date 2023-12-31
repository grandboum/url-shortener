#!/bin/bash
#
podman run \
  -d \
  --name=httpd \
  --pod=url-shortener \
  --volume /var/local/httpd:/usr/local/apache2/htdocs:Z \
  --volume /var/local/logs:/var/log/apache2:Z \
  localhost/httpd-proxy
