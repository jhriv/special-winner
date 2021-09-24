# NOTES

to update `listen_address` via sql:

```sql
UPDATE pg_settings SET boot_val='0.0.0.0' where name='listen_addresses';
```
that didn't work (`pg_settings` table is read-only)

https://stackoverflow.com/questions/40449561/postgresql-9-5-how-to-update-field-on-pg-settings-table
```sql
ALTER SYSTEM SET field TO value;
ALTER DATABASE dbnane SET field TO value;
```

`SELECT pg_reload_conf();`


```
ALTER SYSTEM SET listen_addresses TO '0.0.0.0';
```
    note: `ALTER SYSTEM` udpates `postgresql.auto.conf`
then
```
systemctl stop postgresql-12.service
systemctl start postgresql-12.service
```


pgsql needs to be reloaded after changing `pg_hba.conf` records
