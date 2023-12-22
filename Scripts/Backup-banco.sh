## sudo apt-get install mysql-server -y
## sudo mysql -u root

#!/bin/bash

CAMINHO_HOME=/home/[nome do usuário]
cd $CAMINHO_HOME

if [ ! -d backup ]
then
    mkdir backup
fi