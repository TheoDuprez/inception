FROM debian:11-slim

EXPOSE 3306

RUN apt-get update  \
    && apt-get install -y mariadb-server  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

RUN service mariadb start && mariadb -e "CREATE USER theo IDENTIFIED BY 'theo123';" && mariadb -e "CREATE DATABASE testdb;"

CMD [ "mariadbd" ]