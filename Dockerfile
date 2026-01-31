FROM ghcr.io/pterodactyl/panel:latest

USER root

RUN apk update && apk add --no-cache mysql-client mariadb-connector-c

USER www-data
