# php:7.0-apache vulnerable docker image
#FROM php:7.0-apache
# tutum/apache-php without vulnerable docker image
FROM tutum/apache-php
ADD index.php /var/www/html/index.php
ADD pk_logo.PNG /var/www/html/logo.png
