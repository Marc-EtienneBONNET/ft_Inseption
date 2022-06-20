FROM debian:buster
RUN apt-get -y update 
RUN apt-get -y upgrade

RUN apt-get install -y wget\
	unzip

WORKDIR /var/www/html
RUN wget http://wordpress.org/latest.zip
RUN unzip latest.zip 
RUN cp -R wordpress/* ./
RUN rm -rf latest.zip \
	wordpress

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -sudo echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install \
 	php \
 	php-common \
 	php-mysql \
	php-fpm 
RUN apt-get -y update 
RUN apt-get -y upgrade
COPY www.conf  /etc/php/7.3/fpm/pool.d/www.conf
COPY php-fpm.conf  /etc/php/7.3/fpm/php-fpm.conf
RUN apt install -y vim
RUN chmod -R 755 /var/www/html/ 
RUN chown -R www-data:www-data /var/www/html
COPY cp_wp.sh /cp_wp.sh
EXPOSE 9000
CMD ["php-fpm7.3", "-F"]