# App PHP com Nginx

Este repositório tem o objetivo de ajudar na configuração inicial do Ubuntu 22.04 recém instalado e completamente zerado. Ou seja, será instalado várias ferramentas para facilitar nos testes de um app super simples com PHP + Nginx. É possível rodar a aplicação e utilizar o phpMyAdmin para treinar e estudar SQL. O MySQL não está conectado na aplicação. Ou seja, a aplicação é só para testes, treinar e estudar o PHP 8. Já o MySQL + phpMyAdmin é só para testar, treinar e estudar SQL.

## Requisitos / Recomendação

- Ubuntu 22.04 (Limpo, sem nenhuma instalação) 
- Ou WSL com o Ubuntu 22.04 (Limpo, sem nenhuma instalação)

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
make instalar
```

1. Após a conclusão de todas as instalações, use este comando para sair do Zsh:

```bash
exit
```

2. Só após sair do Zsh é que poderá fechar o terminal. 
3. Logo depois, abra o terminal novamente.
4. Na sequência configure o Zsh, executando os comandos logo abaixo:

```bash
cd ~/app-php-nginx
```

```zsh
make configurar
```

5. Feche o terminal.
6. Logo depois, abra o terminal novamente para que seja concluído as configurações.
7. Reinicie o sistema. Se está usando o WSL com o Ubuntu 22.04 siga este [passo a passo](#wsl-reiniciar-o-sistema-powershell-como-admin).

## App PHP (comandos)

Entrar no app

```zsh
cd ~/app-php-nginx
```

Instalar / Ligar

```zsh
make ligar
```

Desligar

```zsh
make desligar
```

Reiniciar

```zsh
make reiniciar
```

Permissões

```zsh
make permitir
```

## App PHP (portas)

Após ligar o app:

- Acessar o App: http://localhost
- Acessar o phpMyAdmin: http://localhost:10777

## App PHP (comandos opcionais)

Entrar no app 

```zsh
cd ~/app-php-nginx
```

Visualizar chave SSH

```zsh
make ver-ssh-key
```

Instalar plugins Oh My Zsh

```zsh
make instalar-plugins-zsh
```

Mostra o uso de espaço Docker (imagens, containers, volumes e cache) 

```zsh
make espaco
```

Remove os containers, redes, volumes e imagens associadas

```zsh
make desinstalar
```

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
