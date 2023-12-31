#!/bin/bash

podman build \
  -f Containerfile \
  -t httpd-proxy
