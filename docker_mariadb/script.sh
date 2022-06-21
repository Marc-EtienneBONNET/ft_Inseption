
service mysql start
echo "\n y\n root\n root\n y\n y\n y\n y\n" | mysql_secure_installation
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" | mysql -uroot

echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -uroot
echo "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql -uroot
service mysql stop
exec mysqld --user=root
#exec bash