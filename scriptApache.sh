#!/bin/bash

echo "Atualizando servidor... "
apt-get update
apt-get upgrade -y
echo "Servidor Atualizado!"

echo "Instalando apache... "
apt-get install apache2 -y
echo "Apache instalado"

echo "Instalando unzip... "
apt-get install unzip -y
echo "Unzip instalado"

echo "Abrindo diretório tmp... "
cd /tmp
echo "Diretório tmp aberto"

echo "Baixando repositório do github... "
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Repositórios baixados com sucesso"

echo "Descompactando Main.zip... "
unzip main.zip
echo "Arquivo descompactado"

echo "Abrindo diretório linux-site-dio... "
cd /linux-site-dio-main
echo "Diretório linux-site-dio aberto"

echo "Movendo arquivos para o Diretório do Apache... "
cp -R * /var/www/http/
echo "Arquivos movidos"

echo "Script finalizado"




