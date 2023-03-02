#!/bin/bash 

echo "Atualizando Servidor"
apt-get update
apt-get upgrade -y
echo "Instalando Apache2 e Unzip"
apt-get install apache2 -y
systemctl restart apache2
systemctl enable apache2
apt-get install unzip -y 
echo "Baixando zip de página html"
cd /tmp  
wget https://github.com/Khaldewey/site-pessoal/archive/refs/heads/main.zip 
unzip main.zip 
cd site-pessoal-main 
cp -R * /var/www/html 


