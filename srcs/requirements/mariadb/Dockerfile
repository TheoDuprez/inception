FROM debian:11-slim

ARG DATABASE_ROOT_PASSWORD
ARG WORDPRESS_DATABASE
ARG WORDPRESS_DATABASE_USER
ARG WORDPRESS_DATABASE_USER_PASSWORD

RUN apt-get update \
    && apt-get install -y mariadb-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN service mariadb start \
    && mariadb -u root \
    -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DATABASE_ROOT_PASSWORD}';" \
    -e "CREATE DATABASE IF NOT EXISTS ${WORDPRESS_DATABASE};" \
    -e "CREATE USER IF NOT EXISTS '${WORDPRESS_DATABASE_USER}' IDENTIFIED BY '${WORDPRESS_DATABASE_USER_PASSWORD}';" \
    -e "GRANT ALL PRIVILEGES ON ${WORDPRESS_DATABASE}.* TO '${WORDPRESS_DATABASE_USER}';" \
    -e "FLUSH PRIVILEGES;"

ENTRYPOINT [ "mariadbd", "--bind-address=0.0.0.0"]
