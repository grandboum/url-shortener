#!/bin/bash

podman run --name=java-app -p 8081:8081 \
-d ghcr.io/grandboum/url-shortener:main
