```sql
CREATE OR REPLACE PACKAGE test AS

    TYPE measure_record IS RECORD(
       l4_id VARCHAR2(50),
       l6_id VARCHAR2(50),
       l8_id VARCHAR2(50),
       year NUMBER,
       period NUMBER,
       VALUE NUMBER);

    TYPE measure_table IS TABLE OF measure_record;

    FUNCTION get_ups(foo NUMBER)
        RETURN measure_table
        PIPELINED;
END;

CREATE OR REPLACE PACKAGE BODY test AS

    FUNCTION get_ups(foo NUMBER)
        RETURN measure_table
        PIPELINED IS
        rec measure_record;

    BEGIN
        SELECT 'foo', 'bar', 'baz', 2010, 5, 13
          INTO rec
          FROM DUAL;

        -- you would usually have a cursor and a loop here
        PIPE ROW (rec);

        RETURN;
    END get_ups;
END;

SELECT *
  FROM table(test.get_ups(0));
```

[Create an Oracle function that returns a table](https://stackoverflow.com/questions/2829880/create-an-oracle-function-that-returns-a-table)
