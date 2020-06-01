apt-add-repository ppa:ondrej/php -y
apt update
apt-get install -y --allow-change-held-packages \
php-imagick \
php-memcached \ 
php-redis \
php-xdebug \
php-dev
