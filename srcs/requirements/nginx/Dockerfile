FROM debian:11-slim

RUN apt-get update  \
    && apt-get install -y nginx  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/wordpress
RUN chown -R www-data:www-data /usr/share/nginx/wordpress
RUN chmod -R 755 /usr/share/nginx/wordpress

RUN #ls /usr/share/nginx

CMD [ "nginx", "-g", "daemon off;" ]
#CMD [ "ls", "/usr/share/nginx/wordpress" ]

#EXPOSE 9000
