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


## Locks
### Select para locks
```sql 
SELECT l.session_id||','||v.serial# sid_serial,
 l.ORACLE_USERNAME ora_user,
 l.OS_USER_NAME,
 o.object_name, 
 o.object_type, 
 DECODE(l.locked_mode,
 0, 'None',
 1, 'Null',
 2, 'Row-S (SS)',
 3, 'Row-X (SX)',
 4, 'Share',
 5, 'S/Row-X (SSX)',
 6, 'Exclusive', 
 TO_CHAR(l.locked_mode)
 ) lock_mode,
 o.status,  
 to_char(o.last_ddl_time,'dd.mm.yy') last_ddl
FROM dba_objects o, gv$locked_object l, v$session v
WHERE o.object_id = l.object_id
 and l.SESSION_ID=v.sid
order by 2,3;
```

```sql
select
   c.owner,
   c.object_name,
   c.object_type,
   b.sid,
   b.serial#,
   b.status,
   b.osuser,
   b.machine,
   s.sql_text
from
   v$locked_object a ,
   v$session b,
   dba_objects c,
   v$sqltext s
where
   b.sid = a.session_id
and
   a.object_id = c.object_id
and s.address = b.sql_address and s.hash_value = b.sql_hash_value 
and s.piece = 1
```


### Liberar locks
```sql
alter system kill session '189,6139' /* l.session_id||','||v.serial# sid_serial, do primeiro select*/;
```