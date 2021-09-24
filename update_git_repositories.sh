#!/bin/bash

# captura o diretorio raiz
CUR_DIR=$(pwd)

# exibe a mensagem de inicio do script de atualizacao
echo -e "***** Atualizando todos os repositorios... *****"

# procura todos os diretorios que contem .git
for repository in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo -e "***** ["+ $repository +"] *****";

    # entra na pasta do repositorio
    cd "$repository";
    cd ..;

    # faz uma atualizacao com pull
    git pull;

    # volta ao diretorio raiz
    cd $CUR_DIR
done
echo -e ""
echo -e "***** Atualizacao finalizada! *****"
