FROM debian:buster
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y mariadb-server
EXPOSE 3306
COPY script.sh /
COPY my.cnf /etc/mysql/my.cnf
RUN chmod +x script.sh
ENTRYPOINT ./script.sh

