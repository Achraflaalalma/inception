#!/bin/bash

# Start Portainer with the admin password set
/tmp/portainer/portainer -H unix:///var/run/docker.sock --admin-password "$PORTAINER_ADMIN_PASSWORD"