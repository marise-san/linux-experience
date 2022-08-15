#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache e o descompactador de arquivos..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e descompactando os arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script finalizado!"
