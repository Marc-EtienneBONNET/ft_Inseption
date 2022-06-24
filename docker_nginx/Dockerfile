#FROM mbonnet/img_base
FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install nginx vim openssl -y  

COPY default.conf /etc/nginx/sites-available/default

RUN apt install curl -y
COPY nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
CMD ["nginx", "-g", "daemon off;"]
