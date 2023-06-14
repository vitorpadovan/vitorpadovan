# Docker útils

## Comandos

### Comando gerais

| Comando                                                    | Descrição                                                                         |
| ---------------------------------------------------------- | --------------------------------------------------------------------------------- |
| docker ps                                                  | lista os containers                                                               |
| docker i                                                   | Permite a interação com o docker host, usado em conjunto com o 't'                |
| docker t                                                   | Expõe o terminal do docker-host para a maquina local, usado em conjunto com o 'i' |
| docker run -it <imagem>                                    | Idem acima                                                                        |
| docker run --rm <imagem>                                   | Remove imagem após finalizar                                                      |
| docker run -p <porta_maquina>:<porta_docker_host> <imagem> | Publica a porta do docker host para a maquina local                               |
| docker run -d <imagem>                                     | Libera a maquina local                                                            |
| docker stop <container id>                                 | Mata o container                                                                  |
| docker start <container id>                                | Reinicia o container                                                              |
| docker rm <container id>                                   | Remove o container                                                                |
| docker rm <container name>                                 | idem o de cima                                                                    |
| docker rm <container name> -f                              | Força a remoção                                                                   |
| docker run --name <nome> <imagem>                          | Dá nome ao container do que eu quero                                              |
| docker exec -it <nome container> <comando>                 | Executa comando dentro do docker-host                                             |
| docker exec -it <nome container> bash                      | Exemplo do comando acima                                                          |
| docker rm $(docker ps -a -q) -f                            | Remove todos os containers ativos forçando, creio que só funciona em linux        |

### Manipulando volumes

| Binds                                                                                     | Descrição                                            |
| ----------------------------------------------------------------------------------------- | ---------------------------------------------------- |
| docker run -v <pasta_local>:<pasta_docker_host>                                           | montando volumes e criando volumes                   |
| docker run --mount type=bind,source=<pasta_computador>,target=<pasta_docer_host>          | montando volumes                                     |
| docker run --mount type=bind,source="$(pwd)"/<pasta_computador>,target=<pasta_docer_host> | idem o de cima porem montando apartir da pasta local |

| Volumes                                                                       | Descrição                            |
| ----------------------------------------------------------------------------- | ------------------------------------ |
| docker volume ls                                                              | Lista os volumes no container docker |
| docker volume create <nome_volume>                                            | Cria um volume                       |
| docker volume inspect <nome_volume>                                           | Mostra detalhes do volume            |
| docker run --mount type=volume,source=<nome_volume>,target=<pasta_docer_host> | Mostra detalhes do volume            |

### Manipulando imagens

| Comando                                                        | Descrição       |
| -------------------------------------------------------------- | --------------- |
| docker rmi <nome_image>                                        | Remove a imagem |
| docker build -t <nome_usuario_dockerhub>/<nome_image>:<versao> | Cria imagem     |
| docker build -t padovan/apenas_um_teste:latest                 | Cria imagem     |

### Networks

| Comando | Descrição |
| ------- | --------- |

## Dockerfile

| Comando                                     | Descrição                                                                             |
| ------------------------------------------- | ------------------------------------------------------------------------------------- |
| RUN <comando>                               | Cria a pasta e tudo o que for feito será feito em cima desta pasta                    |
| WORKDIR <pasta>                             | Cria a pasta e tudo o que for feito será feito em cima desta pasta                    |
| COPY <pasta_maquina> <destino_docker_host>  | Cria a pasta e tudo o que for feito será feito em cima desta pasta                    |
| USER <nome_usuario>                         | Roda tudo com um usuário específico                                                   |
| ENTRYPOINT [<COMANDOS>]                     | Roda comandos no docker quando for executado, e pode NÃO ser substituido externamente |
| CMD [<COMANDOS>]                            | Roda comandos no docker quando for executado, e pode ser substituido externamente     |
| docker push <nome_do_usuario>/<nome_imagem> | Roda comandos no docker quando for executado, e pode ser substituido externamente     |

## Repositórios

| Repositório                                                                       | Descrição                          |
| --------------------------------------------------------------------------------- | ---------------------------------- |
| [Guia rápido do WSL2 + Docker](https://github.com/codeedu/wsl2-docker-quickstart) | Link para instalar WSL2 no Windows |

## Anotações

1. Instalar WSL 2

```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

2. Mudando para o WSL 2

```sh
wsl --set-default-version 2
```

3. Baixar o **Ubuntu**

4. Verificar versão do WSL

```sh
wsl -l -v
```

## Links úteis

| Link                                                                                                                                                        | Descrição                              |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------- |
| [Instalação Docker Engine](https://www.youtube.com/watch?v=wpdcGgRY5kk)                                                                                     | Instalaçao do Docker Engine no Windows |
| [How To Remove Docker Images, Containers, and Volumes](https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes) | Tutoriais                              |
| [Install docker without sudo on ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04) | Sem usar sudo |