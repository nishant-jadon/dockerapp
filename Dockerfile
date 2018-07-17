# dockercloud/hello-world vulnerable docker image
# FROM dockercloud/hello-world
# olegpuzanov/docker-nginx-php5-fpm without vulnerable docker image
FROM olegpuzanov/docker-nginx-php5-fpm
ADD index.php /www/index.php
ADD logo_osones.png /www/logo.png
