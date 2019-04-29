# SQL

*SQL* ist die Sprache mit der man mit den meisten *relationalen Datenbanken* interagiert. Daher muss man sie können um mit relationalen Datenbanken umzugehen. Auch wenn man ein Object Relational Mapper (**ORM**) nutzt, wie man es vielleicht in größeren Projekten tut, sollte man sich troztdem mit dem Aufbau und der Funktionsweise von SQL Befehlen auseinandersetzen, da dise schließlich auch vom *ORM* genutzt werden.

## Befehle

### Select

Die Select Anweisung ist eine der essentielsten SQL Anweisung, da sie dafür verantwortlich ist Werte aus einer Tabelle aus zu lesen.

```sql
SELECT <Spaltenname>
FROM <Tabellenname>
```

Wenn mehr als eine Spalte ausgegeben werden soll, separiert man diese durch Kommata.
Durch das Stichwort **`as`** kann man den angezeigten Name der Spalte ändern, dieser muss dann später auch z.B. in der `WHERE`-Klausel benutzt werden um auf die Spalte zuzugreifen.

```sql
SELECT <Spaltenname> as <Anzeigename>
FROM <Tabellenname>
```

Wen man alle Spalten anzeigen möchte, kann man auch **`*`** anstatt der Spaltenname schreiben.
Mit **`WHERE`** kann man diese Ausgabe dann beschränken / filtern.

### Create

```sql
CREATE DATABASE IF NOT EXISTS <DatenbankName>
```

> erstellen einer Datenbank mit dem Namen `<DatenbankName>`, falls diese nicht schon existiert


```sql
CREATE TABLE IF NOT EXISTS <TabellenName> (
  <SpaltenName> <Datentyp>,
  <SpaltenName> <Datentyp>,
  ...
  primary key(<SpaltenNamePK),
  foreign key(<SpaltenNameFK) references <TabellenNameFK>(<SpaltenNameFK>),
  ...
)
```

> erstellen einer Tabelle it dem Namen `<TabellenName>`, falls diese nicht schon existiert

### Insert

```sql
INSERT INTO <TabellenName> VALUES (
  <Wert1>,
  <Wert2>,
  ...
)
```

```sql
INSERT INTO <TabellenName> (
  <SpaltenName1>,
  <SpaltenName2>,
  ...
) VALUES (
  <Wert1>,
  <Wert2>,
  ...
)
```

### Delete

```sql
DELETE FROM <TabellenName>
WHERE <Condition>
LIMIT <Anzahl>
```

> `WHERE` ist nicht unbedingt benötigt, falls kein `WHERE` die Datensätze einschränkt werden alle Datensätze genommen, also alle gelöscht (außer es gibt ein `LIMIT`)
>
> `LIMIT` limitiert die Anzahl an Datensätzen die gelöscht werden dürfen, `LIMIT 1` ist zur Sicherheit oft nützlich, da man meistens eh nur einen Datensatz löschen will

### Update

```sql
UPDATE <TabellenName>
SET
<SpaltenName>=<Wert>,
<SpaltenName>=<Wert>,
...
WHERE <Condition>
```

> `WHERE` ist nicht unbedingt benötigt, falls kein `WHERE` die Datensätze einschränkt werden alle Datensätze genommen, also alle verändert

### Alter

```sql
ALTER TABLE <TabellenName>
ADD <SpaltenName> <Datentyp>
```

> Spalte hinzufügen

```sql
ALTER TABLE <TabellenName>
ALTER COLUMN <SpaltenName> <Datentyp>
```

> Spalte verändern

```sql
ALTER TABLE <TabellenName>
DROP COLUMN <SpaltenName> <Datentyp>
```

> Spalte entfernen
