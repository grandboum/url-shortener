#!/bin/bash

podman stop httpd
podman rm httpd
podman rmi localhost/httpd-proxy
