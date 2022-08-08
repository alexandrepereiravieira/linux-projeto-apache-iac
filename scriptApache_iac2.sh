#!/bin/bash

echo "Atualizando sistema"
#Atualizando o servidor
apt-get uddate -y
apt-get upgrade -y
echo "Instalando Apache 2"
#instalando  apache2
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da plicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -r * /var/www/html/
