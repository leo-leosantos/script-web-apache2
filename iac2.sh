#!/bin/bash

echo "---Inicializando o Script---"
echo "Atualizando o servidor"
apt-get  update 
apt-get  upgrade -y

echo "Instalando o Servidor web Apache2"
apt-get  install apache2 -y

echo "Instalando o unzip"
apt-get install unzip  -y

echo "Baixando os arquivos do site"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip 
cd linux-site-dio-main

echo "Copiando os arquivos do site para var/www/html"
cp -R * /var/www/html/




echo "---Finalizando o Scrpt---"

