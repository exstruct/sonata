# Extract all of the operators

```sql
SELECT DISTINCT
  p.oprname as "name"
FROM pg_catalog.pg_operator p
```

# Extract all of the functions

```sql
SELECT DISTINCT
  p.proname as "name",
  p.pronargs as "arity",
  d.description
FROM pg_catalog.pg_proc p
JOIN pg_catalog.pg_description d on p.oid = d.objoid
WHERE pg_catalog.pg_function_is_visible(p.oid)
  AND p.prorettype != 'pg_catalog.trigger'::pg_catalog.regtype
ORDER BY 1
```
