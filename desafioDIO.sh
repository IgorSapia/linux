#! /bin/bash

echo "Criando Repositórios"
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec
echo "Repositórios Criados"

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos Criados"

echo "Configurando Repositórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /public
echo "Repositórios configurados"

echo "Configurando Permissões"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public
echo "Permissões configuradas"

echo "Criando Usuários do ADM"
useradd carlos -m -c "Carlos do ADM" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_ADM
passwd carlos -e
useradd maria -m -c "Maria do ADM" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_ADM
passwd maria -e
useradd joao -m -c "João do ADM" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_ADM
passwd joao -e
echo "Usuários do ADM criados"

echo "Criando Usuários de Vendas"
useradd debora -m -c "Débora do Vendas" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_VEN
passwd debora -e
useradd sebastiana -m -c "Sebastiana do Vendas" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_VEN
passwd sebastiana -e
useradd roberto -m -c "Roberto do Vendas" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_VEN
passwd roberto -e
echo "Usuários de Vendas criados"

echo "Criando Usuários de Segurança"
useradd josefina -m -c "Josefina da Segurança" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_SEC
passwd josefina -e
useradd amanda -m -c "Amanda da Segurança" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_SEC
passwd amanda -e
useradd rogerio -m -c "Rogério da Segurança" -s /bin/bash -p $(openssl passwd -crypt senha) -g GRP_SEC
passwd rogerio -e
echo "Usuários de Segurança criados"

echo "Script finalizado"




