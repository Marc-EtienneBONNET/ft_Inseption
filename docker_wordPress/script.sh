
wp core install --allow-root --url=$WORDPRESS_URL --title=$WORDPRESS_TITLE --admin_user=$MYSQL_USER --admin_pass=$MYSQL_PASSWORD --admin_email=$WORDPRESS_EMAIL
exec php-fpm7.3 -F
