## Necessário fazer a instalação do apache2
## sudo apt-get install apache2 -y

## Mover o arquivo html para o diretório /var/www/html

## Necessário fazer a instalação do curl
## sudo apt-get install curl -y

## Necessário fazer a instalação do ssmtp
## sudo apt-get install ssmtp -y
## configuração do arquivo ssmtp.conf ( root=[seu e-mail], mailhub=smtp.gmail.com:587, AuthUser=[seu e-mail], AuthPass=[sua senha], UseSTARTTLS=yes)

## Necessário fazer a instalação do mail
## sudo apt-get install mailutils -y



#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -ne 200 ]
then
mail -s "Problema no servidor" [e-mail de envio]<<del
Houve um problema no servidor e os usuários pararam de ter acesso ao conteúdo web.
del
    systemctl restart apache2
fi