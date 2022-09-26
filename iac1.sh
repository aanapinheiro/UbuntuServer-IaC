#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criados com sucesso!"

echo "Criando usuários e adicionando aos grupos..."

useradd carlos -c "Carlos da Silva - ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria do Carmo - ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João Oliveira - ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Débora Secco - VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Monteiro - VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Góes - VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina Muller - SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Morhy - SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogério Ferreira - SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Usuários criados e adicionados aos grupos com sucesso!"

echo "Especificando permissões do sistema..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões especificadas com sucesso!"

echo "Procedimento finalizado com sucesso!"
