FROM debian:jessie
RUN apt-get update && apt-get install nginx -y

EXPOSE 80
VOLUME /var/www/html

RUN rm -rf /etc/nginx/sites-enabled/*
COPY confs/nginx.conf /etc/nginx/
COPY confs/proxy.conf /etc/nginx/conf.d/
COPY confs/host /etc/nginx/sites-enabled/

CMD ["nginx", "-g", "daemon off;"]