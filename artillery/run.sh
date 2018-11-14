#!/bin/sh
# artillery run -e dev spp/main.yml
DEBUG=http* ./node_modules/.bin/artillery run nginx-users.yml
