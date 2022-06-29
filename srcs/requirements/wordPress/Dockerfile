#FROM mbonnet/img_base

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

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN  mv wp-cli.phar /bin/wp


COPY www.conf  /etc/php/7.3/fpm/pool.d/www.conf
COPY php-fpm.conf  /etc/php/7.3/fpm/php-fpm.conf
COPY wp-config.php  /var/www/html/wp-config.php
COPY script.sh  /script.sh

RUN chmod -R 755 /script.sh
RUN chmod -R 755 /var/www/html/
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000

ENTRYPOINT /./script.sh
#CMD ["/./script.sh"]

# wp core download --locale=fr_FR --path=/var/www/html 
# wp config create --skip-check --allow-root --path=/var/www/html --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb 
# wp core install --skip-email --allow-root --path=/var/www/html --url=http://localhost/ --title=ft_services --admin_user=$DB_USER --admin_password=$DB_PASSWORD --admin_email=coucou@coucou.com
# wp core install --allow-root --url=$WORDPRESS_URL --title=$WORDPRESS_TITLE --admin_user=$MYSQL_USER --admin_email=$WORDPRESS_EMAIL