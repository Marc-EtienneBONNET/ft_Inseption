FROM debian:buster
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install nginx -y
RUN apt-get -y update
RUN apt-get -y upgrade
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
