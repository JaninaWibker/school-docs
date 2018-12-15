# Mengenoperatoren

**SQL Mengenoperatoren** machen es einem möglich Mengenlehre auf SQL Datensätze anzuwenden, genau wie [Joins](db/joins.md) auch. Die Mengenoperatoren haben in einigen Aspekten mehr Möglichkeiten und sind oft syntaktisch schöner.

## Minus

**Minus** gibt nur die Datensätze der ersten Tabelle zurück die nicht in der zweiten existieren. In MySQL existiert nur leider **Minus** nicht somit muss man ihn mit Hilfe eines **left join** und **where** abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
left JOIN <Table2 B> ON A.<Atributte> = B.<Atributte>
WHERE B.<Attribute> IS NULL
  AND <BedingungA>
  AND <BedingungB>
```

Wenn man mit einem Datenbanksystem arbeitet, welches **Minus** unterstütz, kann man **Minus** wie folgt verwenden

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
MINUS
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

## Intersect

Der **Intersect** Mengenoperator gibt alle Datensätze aus zwei ausgewählten Tabellen zurück. In MySQL existiert nur leider **Intersect** nicht somit muss man ihn mit Hilfe eines **inner joins** abbilden.

```sql
SELECT DISTINCT *
FROM <Table1 A>
INNER JOIN <Table2 B> ON A.<Atribut> = B.<Attribut>
WHERE A.<Attribut> = <B.Attribut> 
 	AND A.<Attribut> = <B.Attribut> 
  AND ...
  AND <BedingungA>
  AND <BedingungB>
```

> Man muss für jedes Attribut noch eine Überprüfung hinzufügen, da beim `INTERSECT` alle Werte gleich sein müssen, wobei beim `INNER JOIN` nur das eine angegebene Attribut überprüft wird und man somit die restlichen noch in der `WHERE`-Klausel manuell überprüfen muss.

Wenn man mit einem Datenbanksystem arbeitet, welches **Intersect** unterstütz, kann man **Intersect** wie folgt nutzen

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
INTERSECT
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

## Union

Mit **Union** kann man die Ausgabe zweier separaten SQL Abfragen verbinden.  Es gibt aber strikte Anforderungen an diese Abfragen: Die Spalten müssen die gleiche Anzahl, Datentypen und Reihenfolge haben.

```sql
SELECT * FROM <Table1 A> WHERE <BedingungA>
UNION
SELECT * FROM <Table2 B> WHERE <BedingungB>
```

