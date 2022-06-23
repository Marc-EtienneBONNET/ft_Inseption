FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install nginx vim openssl -y  

COPY default.conf /etc/nginx/sites-available/default

RUN apt install curl -y
#RUN openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=Paris/L=Paris/O=Nginx FT/OU=Bonnet Marco/CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
COPY nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
CMD ["nginx", "-g", "daemon off;"]
