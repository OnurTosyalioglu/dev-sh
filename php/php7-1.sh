# PHP 7.1
apt-get install -y --allow-change-held-packages \
php7.1 \
php7.1-bcmath \
php7.1-bz1 \
php7.1-cgi \
php7.1-cli \
php7.1-common \ 
php7.1-curl \
php7.1-dba \
php7.1-dev \
php7.1-enchant \
php7.1-fpm \
php7.1-gd \
php7.1-gmp \
php7.1-imap \
php7.1-interbase \
php7.1-intl \
php7.1-json \
php7.1-ldap \
php7.1-mbstring \
php7.1-mysql \
php7.1-odbc \
php7.1-opcache \ 
php7.1-pgsql \
php7.1-phpdbg \
php7.1-pspell \
php7.1-readline \
php7.1-snmp \
php7.1-soap \
php7.1-sqlite3 \ 
php7.1-sybase \
php7.1-tidy \
php7.1-xml \
php7.1-xmlrpc \
php7.1-xsl \
php7.1-zip 

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.1/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.1/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.1/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.1/cli/php.ini

echo "xdebug.remote_enable = 1" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.remote_port = 9000" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.1/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.1/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.1/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.1/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.1/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.1/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.1/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.1/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.1/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.1/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.1/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.1/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.1/fpm/php.ini
