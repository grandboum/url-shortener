#!/bin/bash

podman run \
  --name=java-app \
  --pod=url-shortener \
  -d \
  ghcr.io/grandboum/url-shortener:main
