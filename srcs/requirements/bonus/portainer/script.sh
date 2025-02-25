#!/bin/bash

# Start Portainer with the admin password set
hashed_passwd=$(htpasswd -nb -B admin $PORTAINER_PASS | cut -d ":" -f 2 | tr -d '\n')

/tmp/portainer/portainer -H unix:///var/run/docker.sock --admin-password="$hashed_passwd"

how to bypass username and password i mean provide them as input so i can directly login