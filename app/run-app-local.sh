#!/bin/bash

podman run \
  --name=java-app \
  --pod=url-shortener \
  -d \
  localhost/java-app
