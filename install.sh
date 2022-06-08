#!/usr/bin/env bash

echo "Starting installation."

# Prerequisites
apt update; apt upgrade -y
apt install -y lsb-release ca-certificates apt-transport-https software-properties-common openssl wget curl net-tools -y
add-apt-repository ppa:ondrej/php
apt update;

# Install Apache 2.x
apt install -y apache2

# Install PHP 8.1
apt install -y php8.1 php8.1-cli php8.1-mongodb php8.1-imagick php8.1-imap

# Enable SSL
wget --no-check-certificate https://amlb01.incidentshare.com/ssl.tar.gz
tar zxf ssl.tar.gz


echo "Done."
