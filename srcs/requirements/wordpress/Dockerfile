FROM debian:11-slim

ARG URL="tduprez.42.fr"
ARG TITLE="Inception"
ARG ADMIN_USER="test"
ARG ADMIN_PASSWORD="test123"
ARG ADMIN_EMAIL="theo.duprez.mathieu@gmail.com"

RUN apt-get update  \
    && apt-get install -y php  \
    && apt-get install -y php-fpm  \
    && apt-get install -y php-mysql  \
    && apt-get install curl  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www && curl -o /var/www/latest-fr_FR.tar.gz https://fr.wordpress.org/latest-fr_FR.tar.gz && \
    tar -xzf /var/www/latest-fr_FR.tar.gz -C /var/www && \
    rm var/www/latest-fr_FR.tar.gz && \
    chown -R www-data:www-data /var/www/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar

EXPOSE 8080 80

COPY ./tools/install.sh ./etc

CMD [ "sh", "/etc/install.sh" ]

#RUN wp core install --url="your_domain"  --title="Blog Title" --admin_user="admin username" --admin_password="enter_your_password" --admin_email="enter_your_email"
