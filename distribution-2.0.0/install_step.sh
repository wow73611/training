#!/bin/sh

$ mkdir certs
$ openssl req -newkey rsa:2048 -nodes -keyout certs/domain.key -x509 -days 365 -out certs/domain.crt

$ vi cmd/registry/config.yml
  tls:
    certificate: /go/src/github.com/docker/distribution/certs/domain.crt
    key: /go/src/github.com/docker/distribution/certs/domain.key

$ docker build -t secure_registry .


$ cd contrib/compose/nginx
$ openssl req -newkey rsa:2048 -nodes -keyout domain.key -x509 -days 365 -out domain.crt

  Dockerfile
    FROM nginx:1.7
    COPY nginx.conf /etc/nginx/nginx.conf
    COPY registry.conf /etc/nginx/conf.d/registry.conf
    COPY docker-registry.conf /etc/nginx/docker-registry.conf
    COPY docker-registry-v2.conf /etc/nginx/docker-registry-v2.conf

    COPY domain.crt /etc/nginx/domain.crt
    COPY domain.key /etc/nginx/domain.key


$ vi registry.conf
  ssl on;
  ssl_certificate /etc/nginx/domain.crt;
  ssl_certificate_key /etc/nginx/domain.key;

$ cd contrib/compose
$ vi docker-compose.yml
  nginx:
    build: "nginx"
    ports:
      - "5000:5000"
    links:
      - registryv1:registryv1
      - registryv2:registryv2
  registryv1:
    image: registry
    ports:
      - "5000"
  registryv2:
    build: "../../"
    ports:
      - "5000"

$ docker pull registry:0.9.1
$ docker-compose build
$ docker-compose up
$ docker ps
$ curl -v https://localhost:5000
$ docker tag registry:latest localhost:5000/registry1:latest
$ docker push localhost:5000/registry1:latest


