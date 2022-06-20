FROM debian:buster
RUN apt-get -y update
RUN apt-get -y upgrade
ENV MARIADB_ROOT_PASSWORD:ROOT \
    MARIADB_DATABASE:mydatabase \
    MARIADB_USER:ROOT\
    MARIADB_PASSWORD:ROOT
RUN apt-get install -y mariadb-server
