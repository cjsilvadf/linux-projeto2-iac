#!/bin/bash
echo "Atualizando o sistema"
sudo apt update
echo "Instalando alguns pacotes..."
sudo apt install -y apache2 unzip
echo "Iniciando o apache e adicionar na inicialização"
sudo systemctl start apache2
sudo systemctl enable apache2
cd /tmp
echo "Baixando o conteúdo do site"
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sleep 10
echo "Descompactando os arquivos e movendo para o '/var/www/html/' "
sudo unzip main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html/
echo "Realizando a limpeza"
rm -rf /tmp/sudo rm -rf linux-site-dio-main/ main.zip
echo "Fim"