# Docker útils

## Comandos

| Comando                                                                                   | Descrição                                                                         |
| ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| docker ps                                                                                 | lista os containers                                                               |
| docker i                                                                                  | Permite a interação com o docker host, usado em conjunto com o 't'                |
| docker t                                                                                  | Expõe o terminal do docker-host para a maquina local, usado em conjunto com o 'i' |
| docker run -it <imagem>                                                                   | Idem acima                                                                        |
| docker run --rm <imagem>                                                                  | Remove imagem após finalizar                                                      |
| docker run -p <porta_maquina>:<porta_docker_host> <imagem>                                | Publica a porta do docker host para a maquina local                               |
| docker run -d <imagem>                                                                    | Libera a maquina local                                                            |
| docker stop <container id>                                                                | Mata o container                                                                  |
| docker start <container id>                                                               | Reinicia o container                                                              |
| docker rm <container id>                                                                  | Remove o container                                                                |
| docker rm <container name>                                                                | idem o de cima                                                                    |
| docker rm <container name> -f                                                             | Força a remoção                                                                   |
| docker run --name <nome> <imagem>                                                         | Dá nome ao container do que eu quero                                              |
| docker exec -it <nome container> <comando>                                                | Executa comando dentro do docker-host                                             |
| docker exec -it <nome container> bash                                                     | Exemplo do comando acima                                                          |
| docker run -v <pasta_local>:<pasta_docker_host>                                           | montando volumes e criando volumes                                                |
| docker run --mount type=bind,source=<pasta_computador>,target=<pasta_docer_host>          | montando volumes                                                                  |
| docker run --mount type=bind,source="$(pwd)"/<pasta_computador>,target=<pasta_docer_host> | idem o de cima porem montando apartir da pasta local                              |

## Repositórios

| Repositório                                                                       | Descrição                          |
| --------------------------------------------------------------------------------- | ---------------------------------- |
| [Guia rápido do WSL2 + Docker](https://github.com/codeedu/wsl2-docker-quickstart) | Link para instalar WSL2 no Windows |

## Anotações

1. Instalar WSL 2

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

## Links úteis

| Link                                                                    | Descrição                              |
| ----------------------------------------------------------------------- | -------------------------------------- |
| [Instalação Docker Engine](https://www.youtube.com/watch?v=wpdcGgRY5kk) | Instalaçao do Docker Engine no Windows |
