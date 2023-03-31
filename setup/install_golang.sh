#!/bin/sh

#--- seta cores
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

#---- inicia script

echo "${yellow}[+] Instalando ambiente de desenvolvimento em Go${reset}"

# Instala Go se ainda nao tem instalado
# by https://github.com/nahamsec/bbht/blob/master/install.sh
 echo "${yellow}[+] Instalando Go${reset}"
 sleep 1
 GOversion=$(curl -L -s https://golang.org/VERSION?m=text)
 wget https://go.dev/dl/${GOversion}.linux-amd64.tar.gz $DEBUG_STD
 tar -C /usr/local -xzf ${GOversion}.linux-amd64.tar.gz $DEBUG_STD
 rm -rf /usr/local/go && tar -C /usr/local -xzf ${GOversion}.linux-amd64.tar.gz
 echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
 source /etc/profile
 
 echo "${yellow}[*] Versão Instalada do GO.${reset}"
 rm -rf $GOversion*
 go version
echo "${yellow}[*] Feito.${reset}"
