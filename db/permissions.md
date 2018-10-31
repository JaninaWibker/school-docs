# Permissions

Permissions (bzw. `GRANT`s & `REVOKE`s) in Verbindung mit Usern erlauben es in SQL den Zugriff auf Teile einer Datenbank für bestimmte Personen zu beschränken bzw. zu erlauben. Man gibt einem User entweder Permissions, welche für eine bestimmte Tabelle gelten können, oder entzieht sie ihm. 



## Syntax

Erstellen eines Users

```sql
CREATE USER <Username> <| WITH PASSWORD <Password>>
```

Permissions geben (`GRANT`)

```sql
GRANT <,...Permission> ON <Table> TO <Username>
```



Permissions entziehen (`REVOKE`)

```sql
REVOKE <,...Permission> ON <Table> FROM <Username>
```

