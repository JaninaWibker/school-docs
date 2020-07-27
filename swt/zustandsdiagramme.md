# Zustandsdiagramme und -automaten

Zustandsdiagramme sind vom Aussehen her etwas ähnlich zu Aktivitätsdiagrammen, aber
es gibt eine große fundamentale Unterscheidung: **Beim Zustandsdiagramm ist der Knoten
der aktuelle Zustand des Programmes**, während er beim Aktivitätsdiagramm die aktuell
auszuführende Aktivität ist. Mit viel Kreativität kann man sich diese beiden Typen so
vorstellen wie Mealy- und Mooreautomaten. Diese Überlegung ist eigentlich nur für
ganz simple Zustandsdiagramme möglich, da es schnell mit *Historien* usw. zu etwas vollkommen 
anderen kommen kann.

Wie beim Aktivitätsdiagramm hat man auch **Knoten**, welche aber diesmal Zustände repräsentieren,
**Verbindungen** zwischen den Knoten sowie **Start-** und **Endknoten**. Was nun anders ist, ist dass
man keine Verzweigungen, Zusammenführungen, Teilung oder Synchronisierungen hat. Anstelle hat man
einfach aus einem Zustand mehrere Ausgänge, welche mit Bedingungen versehen sind.

![Beispiel Zustandsdiagramm](../assets/swt/uml/state-transition-diagram.svg)

`schließen()`, `reservieren()`, ... sind hierbei sogenannte **Ereignisse**. Alles in eckigen Klammern (`[]`)
ist eine **Bedingung**.

Wie man hier sieht kann man auch bestimmte Operationen haben, welche z.B. bei Betreten eines Zustands
ausgeführt werden. Diese wären:

- **entry**: Bei betreten des Zustands wird etwas ausgeführt
- **exit**:  Bei verlassen des Zustands wird etwas ausgeführt
- **do**:    Irgendwas passiert mit dem Zustand

## Hierarchische Zustandsautomaten

**TODO**
