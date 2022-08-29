#! /bin/bash

echo "Script para subir servidor web"

echo "Atualizar pacotes do sistema..."

apt update -y && apt upgrade -y

echo "Instalar apache e unzip..."

apt install apache2 unzip -y

echo "Baixando arquivos GitHub..."

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos e copiando para pasta do apache..."

unzip /tmp/main.zip -d /tmp && cp -r  /tmp/linux-site-dio-main/* /var/www/html/

echo "fim"




