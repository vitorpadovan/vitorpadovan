# Oracle

## SQL de exemplos

```sql
BEGIN
 FOR teste_cur IN (
 SELECT
  nuos, max(at2.DHHISTORICO) AS ultimo
 FROM
  AD_TGFHISTORD at2
 WHERE
  DESCRICAO = 'Visita Finalizada Como PRODUTIVA' GROUP BY nuos)
  LOOP
   UPDATE AD_TGFORDSER ser SET ser.DHFECHAMENTO = teste_cur.ultimo WHERE ser.nuos = teste_cur.nuos;
  END LOOP;  
 COMMIT;
END;
```
