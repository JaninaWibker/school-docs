# Mengenoperatoren

**SQL Mengenoperatoren** machen es einem möglich Mengenlehre auf SQL Datensätze anzuwenden, genau wie [Joins](db/joins.md) auch. Die Mengenoperatoren haben in einigen Aspekten mehr Möglichkeiten und sind oft syntaktisch schöner.

## Minus

**Minus** gibt nur die Datensätze der ersten Tabelle zurück die nicht in der zweiten existieren. In MySQL existiert **Minus** leider nicht und somit muss man es mit Hilfe eines **Left Joins** sowie **Where** abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
left JOIN <Table2 B> ON A.<Atributte> = B.<Atributte>
WHERE B.<Attribute> IS NULL
  AND <BedingungA>
  AND <BedingungB>
```

Wenn man mit einem DBMS arbeitet, welches **Minus** unterstütz, kann man **Minus** wie folgt verwenden

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
MINUS
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

## Intersect

Der **Intersect** Mengenoperator gibt alle Datensätze aus zwei ausgewählten Tabellen zurück die exakt identisch sind. In MySQL existiert **Intersect** leider nicht und somit muss man es mit Hilfe eines **Inner Joins** und vielen Where-Bedingungen abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
INNER JOIN <Table2 B> ON A.<Attribut> = B.<Attribut>
WHERE A.<Attribut> = <B.Attribut> 
 	AND A.<Attribut> = <B.Attribut> 
  AND ...
  AND <BedingungA>
  AND <BedingungB>
```

> Man muss für jedes Attribut noch eine Überprüfung hinzufügen, da beim `INTERSECT` alle Werte gleich sein müssen, wobei beim `INNER JOIN` nur das eine angegebene Attribut überprüft wird und man somit die restlichen noch in der `WHERE`-Klausel manuell überprüfen muss.

Wenn man mit einem DBMS arbeitet, welches **Intersect** unterstütz, kann man **Intersect** wie folgt nutzen

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
INTERSECT
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

## Union

Mit **Union** kann man die Ausgabe zweier separaten SQL Abfragen verbinden. Es gibt hierbei aber strikte Anforderungen an diese Abfragen: Die Attribute der beiden Tabellen müssen gleichnamig sein, die gleiche Reihenfolge haben und insgesamt die gleiche Anzahl sein.

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
UNION
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

