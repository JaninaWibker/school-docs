# Aggregatfunktionen

**Aggregatfunktionen** erlauben es einem verschiede (vordefinierte) Berechnungen auf einer Spalte einer Tabelle auszuführen und eine daraus einen Wert herauszukriegen.

Die am meisten benutzten *Aggregatfunktionen* sind:
- `count`: gibt die Anzahl der Datensätze in der angegeben Spalte wieder
- `sum`: summiert jeden Wert in der angebenen Spalte auf und gibt diesen dann wieder zurück
- `avg`: berechnet den Durchschnitt für die Werte in der angegebene Spalte
- `min`: sucht den kleinsten Wert in der angebenen Spalte und gibt diesen zurück
- `max`:sucht den größten Wert in der angebenen Spalte und gibt diesen zurück

> falls die Spalte leer ist, bzw durch nutzen von `WHERE` leer ist wird immer `NULL` zurückgegeben **außer** bei `count`, wo `0` zurückgegeben wird

## Beispiel

> **count** (ohne `distinct`)

```sql
SELECT count(BestellNr) FROM Bestellungen
```

> **count** (mit `distinct`)
>
> `distinct` bewirkt, dass doppelte Werte nicht vorkommen und aussortiert werden, so dass jeder Wert jeweils nur einmal vorkommen kann

```sql
SELECT count(distinct Region) FROM Länder
```

> **sum**
>
> Die Summe der Preise aus allen Bestellungen

```sql
SELECT sum(Preis) FROM Bestellung
```



> **avg**
>
> Der durchschnittliche Preis einer Bestellung

```sql
SELECT avg(Preis) FROM Bestellung
```



> **min**
>
> Der Preis der billigsten Bestellung

```sql
SELECT min(Preis) FROM Bestellung
```



> **max**
>
> Der Preis der teuersten Bestellung

```sql
SELECT max(Preis) FROM Bestellung
```
