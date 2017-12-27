#!/bin/bash

# Update to PHP7 (v7.1.8 2017/9/1)
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

# PHP modules for Apache
sudo apt-get install libapache2-mod-php7.1
sudo a2dismod php5
sudo a2enmod php7.1

# Add Module for Laravel 5.5
sudo apt-get install php7.1-openssl
sudo apt-get install php7.1-pdo
sudo apt-get install php7.1-mbstring
sudo apt-get install php7.1-tokenizer
sudo apt-get install php7.1-xml

# Use MySQL
sudo apt-get install php7.1-mysql

# Composer install 
curl -sS https://getcomposer.org/installer | php

# Laravel install
rm hello-world.php
composer create-project --prefer-dist laravel/laravel laravel
shopt -s dotglob
mv laravel/* ./
rm -rf laravel

mysql-ctl start
mysql -u root -e "create database homestead;grant all on homestead.* to homestead@localhost identified by 'secret';"

# End
echo "done!"
exit
