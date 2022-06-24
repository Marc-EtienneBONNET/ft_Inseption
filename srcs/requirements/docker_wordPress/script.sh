
wp core install --allow-root 	--url=$WORDPRESS_URL \
								--title=$WORDPRESS_TITLE \
								--admin_user=$WORDPRESS_USER1 \
								--admin_password=$WORDPRESS_PASS1 \
								--admin_email=$WORDPRESS_EMAIL1
wp user create --allow-root $WORDPRESS_USER2 \
							$WORDPRESS_EMAIL2 \
							--user_pass=$WORDPRESS_PASS2
exec php-fpm7.3 -F
