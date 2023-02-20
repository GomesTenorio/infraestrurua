#!/bin/bash

# Criação dos grupos de usuários
groupadd financeiro
groupadd vendas

# Criação dos usuários e adição aos grupos correspondentes
useradd -m -G financeiro -s /bin/bash joao
useradd -m -G financeiro -s /bin/bash maria
useradd -m -G vendas -s /bin/bash pedro
useradd -m -G vendas -s /bin/bash julia

# Criação dos diretórios e definição de permissões
mkdir /home/financeiro/arquivos
chown joao:financeiro /home/financeiro/arquivos
chmod 770 /home/financeiro/arquivos

mkdir /home/vendas/arquivos
chown pedro:vendas /home/vendas/arquivos
chmod 770 /home/vendas/arquivos