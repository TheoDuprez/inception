FROM debian:11-slim

ARG URL="tduprez.42.fr"
ARG TITLE="Inception"
ARG ADMIN_USER="test"
ARG ADMIN_PASSWORD="test123"
ARG ADMIN_EMAIL="google@gmail.com"

RUN apt-get update  \
    && apt-get install -y php  \
    && apt-get install -y php-fpm  \
    && apt-get install -y php-mysql  \
    && apt-get install curl  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp-cli

RUN wp-cli core download --allow-root --path=/var/www/wordpress

EXPOSE 8080

CMD wp-cli config create --dbname=testdb --dbuser=theo --path=/var/www/wordpress --allow-root

#RUN wp core install --url="your_domain"  --title="Blog Title" --admin_user="admin username" --admin_password="enter_your_password" --admin_email="enter_your_email"
