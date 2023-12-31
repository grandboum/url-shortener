#!/bin/bash
#
podman run -d \
  --name=httpd \
  -p 8080:80 \
  --volume /var/local/httpd:/usr/local/apache2/htdocs:Z \
  docker.io/library/httpd
