# Joins

**Joins** erlauben es einem mehrere Tabellen bei einer `select`-Anweisung miteinander zu verbinden. Ohne *Joins* ist das verbinden von mehreren Tabellen nicht einfach möglich, man kann zwar bei in der `FROM`-Klausel einer `select`-Anweisung mehrere Tabellen angeben, aber kriegt dann das Kreuzprodukt der beiden Tabellen (außer man spezifiziert mithilfe der `WHERE`-Klausel etwas ähnliches wie das was ein *join* bewirken würde, das nennt man dann *impliziter Join*). Joins sind dazu da die Verbindung zu konkretisieren und zu spezifizieren welche Datensätze zusammen gehören, sodass man das kriegt was man braucht und nicht jegliche Mögliche Kombination (auch das kann seinen Nutzen haben).

> **Kreuzprodukt** (oder auch *kartesisches Produkt*) bedeutet, dass jeder Datensatz aus Tabelle *A* mit jedem Datensatz aus Tabelle *B* verbunden wird, somit hat man also `count(A) * count(B)` Datensätze

Es gibt verschiedene Arten von *joins* mit verschiedenen Nutzen und Ergebnissen.

## Impliziter Join

Ein *impliziter Join* ist eine Art Join, welcher durch die `WHERE`-Klausel implementiert wurde

## Inner Join

## Outer Join

## Left & Right Join

## Natural Join
