#!/bin/bash

# 2017/12/27
# Update to PHP7 (v7.1.12) MySQL (v5.7.20)

# How to use on Cloud9
# chmod 777 install.sh
# sed -i 's/\r//' install.sh
# ./install.sh

# Add PHP 7.1.x Repository
sudo add-apt-repository ppa:ondrej/php -y

# Copy filename from http://dev.mysql.com/downloads/repo/apt/
mysql_apt_deb_file=mysql-apt-config_0.8.9-1_all.deb

# Add MySQL 5.7.x Repository
curl -LO http://repo.mysql.com/${mysql_apt_deb_file}
echo mysql-apt-config mysql-apt-config/select-product          select Apply              | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-server           select mysql-5.7          | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-connector-python select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-workbench        select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-utilities        select none               | sudo debconf-set-selections
echo mysql-apt-config mysql-apt-config/select-connector-odbc   select connector-odbc-x.x | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo -E dpkg -i ${mysql_apt_deb_file}

# Update
sudo apt-get -y update

# PHP Modules for Apache
sudo apt-get -y install libapache2-mod-php7.1
sudo a2dismod php5
sudo a2enmod php7.1

# Add Module for Laravel 5.5
sudo apt-get -y install php7.1-openssl
sudo apt-get -y install php7.1-pdo
sudo apt-get -y install php7.1-mbstring
sudo apt-get -y install php7.1-tokenizer
sudo apt-get -y install php7.1-xml
# Use MySQL
sudo apt-get -y install php7.1-mysql

# Upgrade MySQL Version 5.7.x
sudo apt-get -y install mysql-server
mysql-ctl start
sudo mysql_upgrade -u root --force --upgrade-system-tables

# Create User and Database
mysql-ctl start
mysql -u root -e "create user homestead;create database homestead;grant all on homestead.* to homestead@localhost identified by 'secret';"

# Composer install 
curl -sS https://getcomposer.org/installer | php

# Laravel install
composer create-project --prefer-dist laravel/laravel laravel
shopt -s dotglob
mv laravel/* ./

# Authentication and Migration
php artisan make:auth
php artisan migrate

# Change DocumentRoot
cat > .htaccess << "EOF"
RewriteEngine on
RewriteBase /
RewriteRule ^$ public/ [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.+)$ public/$1 [L]
EOF

# Change Locale Japanese
git clone https://github.com/minoryorg/laravel-resources-lang-ja.git
mv laravel-resources-lang-ja/resources/lang/* ./resources/lang/
sed -i -e "s|'locale' => 'en',|'locale' => 'ja',|g" config/app.php

# Remove File and Folder
rm -rf laravel
rm -rf laravel-resources-lang-ja
rm hello-world.php
rm ${mysql_apt_deb_file}

# End
echo "done!"
exit
