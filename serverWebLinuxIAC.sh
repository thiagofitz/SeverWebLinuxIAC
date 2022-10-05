#!/bin/bash

echo "Atualização do Servidor"

apt-get update
apt-get upgrade -y
apt-get install apacha2 -y
apt-get install unzip -y

echo "Download e copia dos arquivos da Aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
cp -R * /var/www/html/
