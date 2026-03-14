# Containers and Cloud Course Labs

This repository contains labs, exercises, and homework from my Containers and Cloud course.  

## Contents
- Docker basics
- Dockerfile creation
- Docker Compose setups
- Container networking exercises

## How to run
Most projects include a `Dockerfile` or `docker-compose.yml`. To build and run:

[//]: # (```bash)
docker build -t my-app .
docker run -p 8000:8000 my-app
# or if using docker-compose
docker compose up --build