# App PHP com Nginx

Este repositório tem o objetivo de ajudar na configuração inicial do Ubuntu 22.04 recém instalado e completamente zerado. Ou seja, será instalado várias ferramentas para facilitar nos testes de um app super simples com PHP + Nginx. É possível rodar a aplicação e utilizar o phpMyAdmin para treinar e estudar SQL. O MySQL não está conectado na aplicação. Ou seja, a aplicação é só para testes, treinar e estudar o PHP 8. Já o MySQL + phpMyAdmin é só para testar, treinar e estudar SQL.

## Requisitos / Recomendação

- Ubuntu 22.04 (Instalado do zero / formatado / sem nenhuma instalação) 
- Ou WSL com o Ubuntu 22.04 (Instalado do zero / formatado / sem nenhuma instalação)

## Instalação (comandos)

```bash
sudo apt update && sudo apt upgrade -y && sudo apt install make -y
```

```bash
cd ~ && git clone https://github.com/flaubert-dev/app-php-nginx.git
```

```bash
cd ~/app-php-nginx
```

```bash
rm -fr .git
```

```bash
make go
```

Reinicie o sistema. Se está usando o WSL com o Ubuntu 22.04 siga este [passo a passo](https://github.com/flaubert-dev/app-php-nginx?tab=readme-ov-file#wsl-reiniciar-o-sistema-powershell-como-admin).

## App (comandos)

Entrar no app

```zsh
cd ~/app-php-nginx
```

Instalar / Ligar o app 

```zsh
make docker-up
```

Desligar o app

```zsh
make docker-down
```

Reiniciar o app

```zsh
make docker-restart
```

Permissões no app

```zsh
make docker-777
```

## Comandos opcionais

Entrar no app 

```zsh
cd ~/app-php-nginx
```

Visualizar chave SSH

```zsh
make view-ssh-key
```

Instalar plugins Oh My Zsh

```zsh
make install-plugins
```

Mostra o uso de espaço Docker (imagens, containers, volumes e cache) 

```zsh
make docker-space
```

Remove os containers, redes, volumes e imagens associadas

```zsh
make docker-remove
```

## Atalho (opcional)

No terminal do Ubuntu 22.04 veja a lista de todos os comandos já utilizados: 

- CTRL + R e para sair CTRL + C

## WSL: Windows Subsystem for Linux

1. Instalar o WSL e/ou Ubuntu

```zsh
wsl --install -d Ubuntu-22.04
```

2. Atualizar o WSL

```zsh
wsl --update
```

3. Defina a versão padrão do WSL para a versão 2 

```zsh
wsl --set-default-version 2
```

## WSL: Desinstalar o Ubuntu 22.04 do WSL (PowerShell como ADMIN)

1. Listar distros instaladas 

```zsh
wsl -l -v
```

2. Desligar a distribuição

```zsh
wsl --terminate Ubuntu-22.04
```

3. Desinstalar a distribuição 

```zsh
wsl --unregister Ubuntu-22.04
```

## WSL: Reiniciar o sistema (PowerShell como ADMIN)

1. Desligar a distribuição

```zsh
wsl --terminate Ubuntu-22.04
```

2. Desligar o WSL

```zsh
wsl --shutdown
```

3. Ligar o WSL

```zsh
wsl
```

4. Feche o PowerShell / Abra novamente o terminal do Ubuntu 22.04

5. Testar se o Docker está funcionando 

```zsh
docker ps
```
