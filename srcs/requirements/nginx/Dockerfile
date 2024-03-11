FROM debian:11-slim

RUN apt-get update  \
    && apt-get install -y nginx  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/conf.d/mynginx.conf

RUN mkdir -p /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress
RUN chmod -R 755 /var/www/wordpress

RUN #ls /usr/share/nginx

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]

#CMD [ "ls", "/usr/share/nginx/wordpress" ]

#EXPOSE 9000
