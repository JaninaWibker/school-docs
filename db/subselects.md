# Subselects

Sybselects sind super simpel zu beschreiben: Sie sind einfach Unterabfragen in einer Abfrage. Sie können an jeder Stelle vorkommen an der sonst ein Table stehen würde. Durch dieses sehr simple Feature kann man aber sehr viel realisieren, was sonst entweder unmöglich war oder nur durch sehr komplizierte Joins, Views und ähnliches zu erreichen war. 

Gerne werden Subselects genutzt um auf intuitiven Weg mit Aggregatfunktionen zu interagieren. Man kann z.B. alle Datensätze suchen bei denen ein bestimmter Wert überdurchschnittlich / unterdurchschnittlich ist. Dafür würde man zunächst mit einem Subselect und der `avg`-Aggregatfunktion den Durchschnitt berechnen und dann diesen entstandenen Wert in der normalen (äußeren) Abfrage gegen alle Werte testen. 

```sql
SELECT id, amount FROM A
WHERE amount > (SELECT AVG(amount) FROM A)
```

Hier sieht man den Syntax für ein Subselect. Ein Subselect ist einfach nur von normalen Klammern (`()`) eingeschlossen. An der Stelle wo sonst ein Table stehen könnte kann auch ein Subselect stehen, da ein Subselect ja eine Art Table produziert, ähnlich wie ein View. 

## Operatoren

Man kann einige Operatoren auf Tabellen und somit auch Subselects anwenden, diese sind `ALL`, `ANY`, `EXISTS` und `IN`.  `ALL` und `ANY`  benutzt man zusammen mit den Relationalen-Operatoren (`=`, `>`, `<`, ...). Man sagt mit `ALL`, dass dieser Vergleich auf alle Elemente in dem darauffolgendem Table / Subselect wahr sein müssen. 

### ALL

Mit `ANY` sagt man, dass der Vergleich bei mindestens einem Element im darauffolgendem Table / Subselect wahr sein muss. 

```sql
SELECT id, amount FROM A
WHERE amount >= ALL (SELECT amount FROM A)
```

Diese Abfrage hätte man auch ganz einfach mit der Aggregatfunktion `MAX` realisieren können, aber es gibt manchmal syntaktische Gründe oder auch funktionsbedinge Gründe die dafür sprechen `ALL` zu nutzen. Man kann nämlich nicht unbedingt jede Abfrage mit einem `MAX` oder einem `MIN` abbilden die ein `ALL` produzieren kann. 

### ANY

```sql
SELECT name FROM Products
WHERE id = ANY (SELECT id FROM OrderDetails
                      WHERE quantity > 99)
```

Dieses Beispiel zeigt einen der Nutzen für `ANY`.  Man sucht zunächst in dem Subselect nach allen Bestellungen die eine Anzahl `> 99` haben. Solange eine der Bestellungen des Subselects die gleiche `id` hat wie in der äußeren Abfrage wird die äußere Abfrage wahr zurückgeben.  `ANY` kann man immer benutzen, wenn man überprüfen will, ob irgendetwas einmal oder öfter vorkommt.

### EXISTS



### IN