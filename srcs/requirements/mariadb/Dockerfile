FROM debian:11-slim

EXPOSE 3306

RUN apt-get update  \
    && apt-get install -y mariadb-server  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*


RUN service mariadb start \
    && mariadb -e "CREATE USER 'theo' IDENTIFIED BY 'theo123';" \
    && mariadb -e "CREATE DATABASE testdb;" \
    && mariadb -e "GRANT ALL PRIVILEGES ON testdb.* TO 'theo' IDENTIFIED BY 'theo123';" \
    && mariadb -e "FLUSH PRIVILEGES;"
RUN #service mariadb start && mariadb -e "CREATE USER theo IDENTIFIED BY 'theo123';" && mariadb -e "CREATE DATABASE testdb;" && mariadb -e "GRANT ALL PRIVILEGES ON testdb.* TO 'theo' IDENTIFIED BY 'theo123';" && mariadb -e "FLUSH PRIVILEGES;"
RUN #echo [mysqld] >> /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mariadb restart

CMD [ "mariadbd", "--bind-address=0.0.0.0"]
