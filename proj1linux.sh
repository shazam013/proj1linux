#!/bin/bash

mkdir publico
mkdir adm
mkdir ven
mkdir sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 Senha5678)


adduser carlos GRP_ADM
adduser maria GRP_ADM
adduser joao GRP_ADM
adduser debora GRP_VEN
adduser sebastiana GRP_VEN
adduser roberto GRP_VEN
adduser josefina GRP_SEC
adduser amnanda GRP_SEC
adduser rogerio GRP_SEC

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico
