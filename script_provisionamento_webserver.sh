#!/bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache..."
apt-get install apache2 -y

echo "Instalando o Unzip..."
apt-get install unzip -y


cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd /tmp/linux-site-dio-main/
echo "."
echo "*************************************************************"
echo "Nesse momento estamos no diretório abaixo:"
pwd
echo "*************************************************************"
echo "."
echo "Copiando os arquivos da aplicação..."
rm /var/www/html/index.html
cp -R /tmp/linux-site-dio-main/* /var/www/html/
