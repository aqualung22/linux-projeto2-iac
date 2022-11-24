#!/bin/bash

echo "Atualizando o servidor..."
apt-get update 
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget -c -t 0 https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cp -R * /var/www/html/

