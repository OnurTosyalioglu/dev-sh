sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password password secret'
sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password_again password secret'
sudo apt-get -y install mysql-server-5.6
