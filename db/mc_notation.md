# MC Notation

Die Kardinalität zwischen 2 Entitätstypen gibt an, wie viele Entitäten des zweiten Entitätstypen genau mit einer Entität des ersten Entitätstypen in Beziehung stehen.

Für die Datenstrukturierung interessieren nicht die genauen Zaheln, sondern nur die Typen:
- genau eine Entität (1)
- keine oder eine Entität (c)
- mehrere Entitäten, aber minimal eine (m)
- keine, eine oder mehrere Entitäten (mc)

relevante Kombinationen:
1. `1:1` (1 zu 1)
2. `1:c` (1 zu (0 oder 1))
3. `1:m` (1 zu (mindestens 1))
4. `1:mc` (1 zu (beliebig viel))
5. `c:c` ((0 oder 1) zu (0 oder 1))
6. `m:m` ((mindestens 1) zu (mindestens 1))
7. `m:mc` ((mindestens 1) zu (beliebig viel))
8. `mc:mc` ((beliebig viel) zu (beliebig viel))
