#!/bin/bash

converte_imagem() {
cd ~/Downloads/imagens-livros
if
(!d png ]
then

	mkdir png
fi

for imagem in *.jpg
do
	local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1}')
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done

converte_imagem
if [ $? -eq 0 ]
then
	echo "Conversão realizada com sucesso"
else
	echo "Houve erro na conversão"
fi