#!/bin/bash

docker run -d --restart unless-stopped -e TZ="${TZ}" -v $(pwd)/glances.conf:/glances.conf:ro -v /var/run/docker.sock:/var/run/docker.sock:ro --pid host -e GLANCES_OPT="-C /glances.conf --webserver" -p 61208:61208 nicolargo/glances:latest-full