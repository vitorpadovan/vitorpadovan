# Docker útils

## Comandos

| Comando                                       | Descrição                                                                         |
| --------------------------------------------- | --------------------------------------------------------------------------------- |
| docker ps                                     | lista os containers                                                               |
| docker i                                      | Permite a interação com o docker host, usado em conjunto com o 't'                |
| docker t                                      | Expõe o terminal do docker-host para a maquina local, usado em conjunto com o 'i' |
| docker it                                     | Idem acima                                                                        |
| docker --rm                                   | Remove imagem após finalizar                                                      |
| docker -p <porta_maquina>:<porta_docker_host> | Publica a porta do docker host para a maquina local                               |
| docker -d                                     | Libera a maquina local                                                            |
| docker stop <container id>                    | Mata o container                                                                  |
| docker start <container id>                   | Reinicia o container                                                              |
| docker rm <container id>                      | Remove o container                                                                |
| docker rm <container name>                    | idem o de cima                                                                    |
| docker rm <container name> -f                 | Força a remoção                                                                   |
| docker run --name <nome> <imagem>             | Dá nome ao container do que eu quero                                              |
| docker exec -it <nome container> <comando>    | Executa comando dentro do docker-host                                             |
| docker exec -it <nome container> bash         | Exemplo do comando acima                                                          |

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

## Links

| Link                                                                    | Descrição                              |
| ----------------------------------------------------------------------- | -------------------------------------- |
| [Instalação Docker Engine](https://www.youtube.com/watch?v=wpdcGgRY5kk) | Instalaçao do Docker Engine no Windows |
