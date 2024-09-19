FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx git

RUN rm -rf /var/www/html/*

RUN git clone https://github.com/hamidbong/hamidbong.github.io.git /var/www/html/


# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
