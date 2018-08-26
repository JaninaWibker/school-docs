# Generalisierung & Spezialisierung

## Spezialisierung

Bei der **Spezialisierung** wird ein Entitätstyp als Teilmenge eines anderen Entitätstypen erkannt und deklariert, wobei sich die spezialiserte Entitätsmenge durch besondere Eigenschaften (nur für sie geltende Attribute und/oder Beziehungen) gegenüber der übergeordneten, *generalisierten* Menge auszeichnet.
Da es sich bei einem Einzelobjekt der spezialisierten Menge und der generalisierten Menge um dasselbe Einzelobjekt handelt, gelten alle Eigenschaften - insbesondere die Identifikation - und alle Beziehungen des generalisierten Einzelobjektes auch für das spezialisierte Einzelobjekt.

Da es sich bei einem Einzelobjekt der spezialisierten Menge um eine Unterkategorie der generalisierten Menge handelt gelten alle Eigenschaften - insbesondere die Identifikation - und alle Beziehungen der generalisierten Menge für das Einzelobjekt. Ein Einzelobjekt der spezialiserten Menge ist auch ein Einzelobjekt der generalisierten Menge, und daher gelten auch alle Eigenschaften dieser, aber ein Einzelobjekt der generalisierten Menge muss nicht unbedingt auch ein Einzelobjekt der spezialisierten Menge sein.
Es kann auch, dies kommt sogar sehr oft vor, mehrere spezialiserte Mengen einer generalisierten Menge geben.

Beziehungstypen der Art "Spezialiserung / Generalisierung" werden durch `is-a` (manchmal auch `a-kind-of` genannt) & `can-be` beschrieben. Es handelt sich hierbei um `1:c`-Beziehungen.

```
[spezialisierte Menge] is-a [generalisierte Menge]
[spezialisierte Menge] a-kind-of [generalisierte Menge]

[generalisierte Menge] can-be [spezialisierte Menge]
```

## Generalisierung

Während *Spezialisierungen* durch Bildung von Teil-Entitätsmengen aus gegebenen Entitäten entstehen, werden bei **Generalisierung** gemeinsame Eigenschaften und Beziehungen, die in verschiedenen Entitätstypen vorkommen, zu einem neuen Entitätstypen zusammengefasst.

Die vorstehende Unterscheidung zwischen Spezialisierung und Generalisierung ergibt sich lediglich aus der Reihenfolge, in der Entitätstypen beim Modellieren identifiziert wurden: im Ergebnis entstehen immer Beziehungstypen, die in der einen Richtung Spezialisierung, in der anderen Genalisierung sind.

Bei Bedarf können für denselben Entitätstypen mehrere Spezialisierungen / Generalisierungen auftreten.
