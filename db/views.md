# Views

Ein View ist eine Art Alias für eine SELECT Anweisung, bzw. Die davon ausgewählten Datensätze. Man kann mit einem View genauso umgehen wie mit einer normalen Tabelle,  inklusive SELECT, UPDATE und DELETE. Die vom View inbegriffenen Datensätze können wie sonst bei normalen Tabellen weiter  spezifiziert werden. Wichtig ist es, zu wissen, dass ein View **dynamisch** ist, die Datensätze werden nicht extra als Kopie oder ähnliches gespeichert sondern neu berechnet indem die mit dem View assoziierte SELECT Anweisung ausgeführt wird. 



## Syntax

> Erstellen eines Views

```sql
CREATE VIEW <Identifier> AS
SELECT ...
FROM ...
WHERE ...
```