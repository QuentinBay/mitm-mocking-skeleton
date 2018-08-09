#!/usr/bin/env bash

# important to register this call for the health check in docker-compose
curl -i localhost:8000/api/health
curl -i localhost:8000/api/v1/hello?person=chipy
curl -i -XPOST --data person=chipy localhost:8000/api/v1/bye
curl -i localhost:8000/api/v1/hello?person=chipy2
curl -i localhost:8000/api/does_not_exist
curl -i localhost:8000/api/health
