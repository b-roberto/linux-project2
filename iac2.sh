#!/bin/bash

echo "Atualizando o sistema..."

apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache e Unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos do site modelo, unzip e copiando no dir padrão WEB..."
cd /tmp
wget https://github.com/b-roberto/linux-site/raw/main/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Scrip finalizado!"
