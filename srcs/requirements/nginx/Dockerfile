FROM debian:11-slim

RUN apt-get update  \
    && apt-get install -y nginx  \
    && apt install openssl  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/conf.d/mynginx.conf

RUN mkdir -p /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress
RUN chmod -R 755 /var/www/wordpress
RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=tduprez.42.fr/UID=tduprez"

RUN #ls /usr/share/nginx

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]

#CMD [ "ls", "/usr/share/nginx/wordpress" ]

#EXPOSE 9000
