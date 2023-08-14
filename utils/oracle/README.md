# Oracle

## Artigos

| Nome                                                                            | Finalidade                                  |
| ------------------------------------------------------------------------------- | ------------------------------------------- |
| [teste](https://docs.oracle.com/cd/B14117_01/appdev.101/b10807/13_elems002.htm) | Executar uma trigger e ler a própria tabela |

| Nome                                                                      | Finalidade                               |
| ------------------------------------------------------------------------- | ---------------------------------------- |
| SELECT DBMS_METADATA.GET_DDL(<TIPO>,<NOME_OBJECT>,<NOME_OWNER>) FROM DUAL | Ver create table de uma tabela           |
| SELECT DBMS_METADATA.GET_DDL('TABLE','AD_TIPOCONTROLE','TESTE') FROM DUAL | Ver create table de uma tabela           |
| CREATE TABLE <TABELA> as SELECT \* FROM <TABELA_DESTINO> WHERE <CONDICAO> | Cria uma tabela com base em uma consulta |

## Exceptions

https://www.techonthenet.com/oracle/exceptions/when_others.php

EXCEPTION
WHEN OTHERS THEN
err_code := SQLCODE;
err_msg := SUBSTR(SQLERRM, 1, 200);
