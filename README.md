# App PHP com Nginx

Este repositório tem o objetivo de ajudar na configuração inicial do Ubuntu 22.04 recém instalado e completamente zerado. Ou seja, será instalado várias ferramentas para facilitar no desenvolvimento de uma aplicação simples com PHP + Nginx. É possível rodar a aplicação e utilizar o phpMyAdmin para treinar e estudar SQL. O MySQL não está conectado na aplicação. Ou seja, a aplicação é só para treinar e estudar o PHP 8. Já o MySQL + phpMyAdmin é para treinar e estudar SQL.

## Requisitos / Recomendação

- Ubuntu 22.04 (Instalado do zero / formatado / sem nenhuma instalação) 
- Ou WSL com o Ubuntu 22.04 (Instalado do zero / formatado / sem nenhuma instalação)

## Instalação (comandos)

1. sudo apt update && sudo apt upgrade -y && sudo apt install make -y
2. cd ~ && git clone https://github.com/flaubert-dev/app-php-nginx.git
3. cd ~/app-php-nginx
4. rm -fr .git
5. make go
6. Reinicie o sistema. Se está usando o WSL com o Ubuntu 22.04 siga este [passo a passo](https://github.com/flaubert-dev/app-php-nginx?tab=readme-ov-file#wsl-reiniciar-o-sistema-powershell-como-admin).

## App (comandos)

1. Entrar no app          -> cd ~/app-php-nginx
2. Instalar / Ligar o app -> make docker-up
3. Desligar o app         -> make docker-down
4. Reiniciar o app        -> make docker-restart
5. Permissões no app      -> make docker-777

## Comandos opcionais

- Entrar no app                                                        -> cd ~/app-php-nginx
- Visualizar chave SSH                                                 -> make view-ssh-key
- Instalar plugins Oh My Zsh                                           -> make install-plugins
- Mostra o uso de espaço Docker (imagens, containers, volumes e cache) -> make docker-space 
- Remove os containers, redes, volumes e imagens associadas            -> make docker-remove

## Atalho (opcional)

No terminal do Ubuntu 22.04 veja a lista de todos os comandos já utilizados: 

- CTRL + R e para sair CTRL + C

## WSL: Windows Subsystem for Linux

1. Instalar o WSL e/ou Ubuntu                    -> wsl --install -d Ubuntu-22.04
2. Atualizar o WSL                               -> wsl --update
3. Defina a versão padrão do WSL para a versão 2 -> wsl --set-default-version 2

## WSL: Desinstalar o Ubuntu 22.04 do WSL (PowerShell como ADMIN)

1. Listar distros instaladas  -> wsl -l -v
2. Desligar a distribuição    -> wsl --terminate Ubuntu-22.04
3. Desinstalar a distribuição -> wsl --unregister Ubuntu-22.04

## WSL: Reiniciar o sistema (PowerShell como ADMIN)

1. Desligar a distribuição -> wsl --terminate Ubuntu-22.04
2. Desligar o WSL          -> wsl --shutdown
3. Ligar o WSL             -> wsl
4. Feche o PowerShell / Abra novamente o terminal do Ubuntu 22.04
5. Testar se o Docker está funcionando -> docker ps
