# PHP 7.0
apt-get install -y --allow-change-held-packages \
php7.0 \
php7.0-bcmath \
php7.0-bz2 \
php7.0-cgi \
php7.0-cli \
php7.0-common \ 
php7.0-curl \
php7.0-dba \
php7.0-dev \
php7.0-enchant \
php7.0-fpm \
php7.0-gd \
php7.0-gmp \
php7.0-imap \
php7.0-interbase \
php7.0-intl \
php7.0-json \
php7.0-ldap \
php7.0-mbstring \
php7.0-mysql \
php7.0-odbc \
php7.0-opcache \ 
php7.0-pgsql \
php7.0-phpdbg \
php7.0-pspell \
php7.0-readline \
php7.0-snmp \
php7.0-soap \
php7.0-sqlite0 \ 
php7.0-sybase \
php7.0-tidy \
php7.0-xml \
php7.0-xmlrpc \
php7.0-xsl \
php7.0-zip 

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.0/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.0/cli/php.ini

echo "xdebug.remote_enable = 1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_port = 9000" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.0/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.0/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.0/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.0/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.0/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.0/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.0/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.0/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.0/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.0/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.0/fpm/php.ini
