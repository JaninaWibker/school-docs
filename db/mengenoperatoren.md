# Mengenoperatoren

**SQL Mengenoperatoren** machen es einem möglich Mengenlehre auf SQL Datensätze anzuwenden, genau wie [Joins](db/joins.md) auch. Die Mengenoperatoren haben in einigen Aspekten mehr Möglichkeiten und sind oft syntaktisch schöner.

## Minus

**Minus** gibt nur die Datensätze der ersten Tabelle zurück die nicht in der zweiten existieren. In mysql existiert nur leider **Minus** nicht somit muss man ihn mit Hilfe eines **left join** und **where** abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
left JOIN <Table2 B> ON A.<Atributte> = B.<Atributte>
WHERE B.<Attribute> IS NULL
```

## Intersect

Der **Intersect** Mengenoperator gibt alle Datensätze aus zwei ausgewählten Tabellen zurück. In mysql existiert nur leider **Intersect** nicht somit muss man ihn mit Hilfe eines **inner joins** abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
INNER JOIN <Table2 B> ON A.<Atributte> = B.<Attribute>
```

## Union

Mit **Union** kann man die Ausgabe zweier separaten SQL Abfragen verbinden.  Es gibt aber strikte Anforderungen an diese Abfragen: Die Spalten müssen die gleiche Anzahl, Datentypen und Reihenfolge haben.

```sql
SELECT * FROM <Table1 A>
UNION
SELECT * FROM <Table2 B>
```

