FROM debian:buster
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install nginx -y
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN apt-get -y update
RUN apt-get -y upgrade
EXPOSE 80
#workdir
#CMD ["nginx", "-g", "daemon off;"]
