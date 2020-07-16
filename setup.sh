#!/bin/bash

INSTALL_PATH=$(pwd)
UPSTREAM=ignicaodigital

USERNAME=$1

REPOSITORIES=( "sodexo_scraper" "sodexo_scraper_client" )

PATHS=( "apps/api" "apps/client" )

LENGTH=${#REPOSITORIES[@]}

git submodule init
git submodule update

echo "######################################"
echo "Clonando repositórios..."
echo "######################################"

for (( i=1; i<${LENGTH}+1; i++ ));
do
  echo "Adicionando repositório: ${REPOSITORIES[$i-1]}"
  cd $INSTALL_PATH/${PATHS[$i-1]}
  echo $(pwd)
  git remote remove origin
  git remote add origin git@github.com:clebercar/${REPOSITORIES[$i-1]}.git
  git remote update -p
  git checkout master
  git reset --hard origin/master
  cd $INSTALL_PATH
done

echo "######################################"
echo "Repositórios clonados."
echo "######################################"