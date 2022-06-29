#FROM mbonnet/img_base

FROM debian:buster

RUN apt-get -y update &&\
	apt-get -y upgrade &&\
	apt-get install -y mariadb-server

COPY script.sh /
COPY my.cnf /etc/mysql/my.cnf

RUN chmod +x script.sh

ENTRYPOINT ./script.sh

