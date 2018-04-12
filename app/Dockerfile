FROM php:7.1-fpm

# install PHP extension for redis
RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

COPY session-redis.ini /usr/local/etc/php/conf.d/

# index.php is copied at the last step, as index.php will be modified most often
COPY index.php /var/www/html/
