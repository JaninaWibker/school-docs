# ER Diagramm zu relationaler Datenbank

## Problematik

Man kann in relationalen Datenbanken nicht mehrere Werte in einem Feld in einem Datensatz abspeichern, daher bereiten Beziehungen mit 1 oder mehr und beliebig vielen ein Problem. Man umgeht dieses indem man anstatt mehrere Werte in ein Feld eines Datensatzes zu schreiben einfach in die Entität, die 0 bis 1 mal vorkommen darf einen *foreign key* zur anderen Entität macht. Somit zeigt nicht ein Wert auf eine Liste von anderen Entitäten, sondern Entitäten, also sozusagen die Elemente der Liste, auf die Entität zu der sie gehören, also sozusagen die Entität mit der Liste.

Eine Beziehungsmenge vom Typ `c:mc` wird definiert, indem eine Fremdschlüssel in der `c`-Tabelle auf den Primärschlüssel der `mc`-Tabelle weist (dies geht auch mit `c:m`, `1:mc`, `1:m`).

![](../assets/lti/Beziehungsmenge-A.svg)

Dies bereitet aber trotzdem noch Probleme, wenn beide Entitäten 0 bis 1 mal bis beliebig viel vorkommen können. Hier nimmt man dann eine **Zwischentabelle**, welche dann die beiden Entitäten miteinander verbindet.

Jede Beziehungsmenge vom Typ `(mc / m):(mc / m)` muss mit einer eigenständigen Hilfstabelle definiert werden, wobei:
- die *primary keys* der zugehörigen Entitätsmengen als Fremdschlüssel in dieser Hilfstabelle auftreten müssen
- der *primary keys* der Beziehungsmengentabelle (Hilfstabelle) aus den Fremdschlüsseln zusammengesetzt ist (man kann auch einen komplett eigenen *primary key* **zusätzlich** angeben, aber dies ist eigentlich unnötig, da die Einzigartigkeit des zusammengesetzten *primary keys* garantiert ist)
- die Attribute der Beziehungsmenge als Attribute der Hilfstabelle übernommen werden

![Hilfstabelle bzw. Hilfstabelle](../assets/lti/Beziehungsmenge-B.svg)

Meist ist der Name der Hilfstabelle eine Kombination aus den beiden Namen der Entitäten. Zusätzlich eventuell noch ein Prefix um zu kennzeichnen das es sich um eine Hilfstabelle / Zwischentabelle handelt
