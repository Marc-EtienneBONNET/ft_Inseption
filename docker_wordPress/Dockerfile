FROM debian:buster
RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get install -y wget \
	unzip \
 	php \
 	php-common \
 	php-mysql \
	php-fpm \
	vim

WORKDIR /var/www/html
RUN wget http://wordpress.org/latest.zip
RUN unzip latest.zip && \
	cp -R wordpress/* ./ && \
	rm -rf latest.zip wordpress

COPY www.conf  /etc/php/7.3/fpm/pool.d/www.conf
COPY php-fpm.conf  /etc/php/7.3/fpm/php-fpm.conf
COPY wp-config.php  /var/www/html/wp-config.php
RUN chmod -R 755 /var/www/html/
RUN chown -R www-data:www-data /var/www/html
EXPOSE 9000
CMD ["php-fpm7.3", "-F"]