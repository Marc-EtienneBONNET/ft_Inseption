FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install nginx vim openssl -y  

COPY default.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
