FROM debian:buster
RUN apt-get -y update 
RUN apt-get -y upgrade

RUN apt-get -y install \
	php \
	php-common \
	php-mysql

RUN apt-get install -y curl
RUN curl http://wordpress.org/latest.tar.gz
# WORKDIR /var/www/html


# RUN apt-get -y install wordpress
# RUN apt-get -y update
# RUN apt-get -y upgrade

# RUN apt-get -y install \
# 	lsb-release \
# 	apt-transport-https \
# 	ca-certificates 
# RUN curl -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
# RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" \
#  	tee /etc/apt/sources.list.d/php.list
# RUN apt-get -y update
# RUN apt-get install -y php7
