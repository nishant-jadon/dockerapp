# dockercloud/hello-world vulnerable docker image
#FROM dockercloud/hello-world
# olegpuzanov/docker-nginx-php5-fpm without vulnerable docker image
#FROM olegpuzanov/docker-nginx-php5-fpm
#FROM webdevops/php-nginx
#FROM php
FROM php:5.6-fpm-alpine
ADD index.php /www/index.php
ADD index.php /var/www/index.php
ADD pk_logo.PNG /var/www/logo.png
ADD pk_logo.PNG /www/logo.png
ADD index.php /var/www/html/index.php
ADD pk_logo.PNG /var/www/html/logo.png

