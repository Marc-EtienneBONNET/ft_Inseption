FROM debian:buster
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y mariadb-server
EXPOSE 80
#COPY debian.cnf /etc/mysql/debian
RUN apt-get -y update && apt-get -y upgrade
CMD ["sh"]
#CMD ["mysql"]

