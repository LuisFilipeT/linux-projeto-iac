!# /bin/bash

if [[ $USER == root ]]
then

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -c "adm" -s /bin/bash -p "$(openssl passwd 123)" -G GRP_ADM
useradd maria -m -c "adm" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -c "adm" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -c "ven" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -m -c "ven" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -c "ven" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -m -c "sec" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -c "sec" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -m -c "sec" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


else

echo Script deve ser executado com usuario root


fi
