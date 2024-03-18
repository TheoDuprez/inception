FROM debian:11-slim

RUN apt-get update  \
    && apt-get install -y php  \
    && apt-get install -y php-fpm  \
    && apt-get install -y php-mysql  \
    && apt-get install curl  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /var/www && curl -o /var/www/latest-fr_FR.tar.gz https://fr.wordpress.org/latest-fr_FR.tar.gz && \
#     tar -xzf /var/www/latest-fr_FR.tar.gz -C /var/www && \
#     rm var/www/latest-fr_FR.tar.gz

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar

COPY conf/www.conf etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/install.sh ./etc

EXPOSE 9000

CMD [ "sh", "/etc/install.sh" ]
