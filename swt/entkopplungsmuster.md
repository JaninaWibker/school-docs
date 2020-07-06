# Entkopplungsmuster

## Adapter

Ein Adapter "übersetzt" zwischen 2 (ähnlichen) Schnittstellen. Er biegt die Aufrufe zurecht und sorgt
allgemein dafür, dass die beiden Schnittstellen miteinander gut klar kommen.

![Adapter UML Diagramm](../assets/swt/uml/adapter.svg)

Beispiel für einen Adapter

```java
interface Vergleicher<T> {
  public int vergleiche(T b)
}

class VergleicherAdapter<T> implements Vergleicher<T> {
  private AndererVergleicher a;
  public int vergleiche(T b) {
         if(this.a.größerAls(b)) return  1;
    else if(this.a.gleich(b))    return  0;
    else                         return -1;
  }
}

class AndererVergleicher<T> {
  public boolean größerAls(T b) { ... }
  public boolean gleich(T b) { ... }
}
```

Hier übersetzt `VergleicherAdapter<T>` zwischen `Vergleicher<T>` und `AndererVergleicher<T>`.

Die Implementation des Adapters ist meistens ähnlich simpel wie in diesem Beispiel, ansonsten handelt es
sich um ein anderes Entwurfsmuster (**TODO**: welches?).

## Beobachter

## Brücke

Eine Brücke kann man nutzen, wenn man Klassen mit 2 Eigenschaften erstellen will, sodass man bei $M \cdot N$ Klassen
landen würde, wenn man für jede Kombination der Eigenschaften eine Klasse erstellt. Mit einer Brücke kann man diese
Anzahl an Klassen, welche oft sehr ähnlich aussehen, auf $M + N + 2$ reduzieren. Man Erstellt pro Eigenschaft eine
Superklasse und für jeden Wert die die Eigenschaft annehmen kann eine Unterklasse.

![Brücke UML Diagramm](../assets/swt/uml/bridge.svg)

Ein Beispiel an dem dieses Konzept sehr leicht verdeutlicht werden kann ist UI Komponenten. Angenommen man hat
Buttons, Text und Bilder als UI Elemente und man will diese auf Linux, MacOS und Windows anzeigen. Dann bräuchte man
ohne eine Brücke $3 \cdot 3 = 9$ Klassen. Mit einer Brücke kann man diese Anzahl reduzieren auf $3 + 3 + 2$ Klassen.

Die Eigenschaften die existieren sind einmal die Art von UI Komponente und die Platform:

![Brücke UML Diagramm konkretes Beispiel](../assets/swt/uml/bridge-example.svg)

Die Anzahl an Klassen steigt bei Nutzung einer Brücke weit aus langsamer an und, da nicht mehr so viel Codeduplizierung
vorkommt ist die Chance, dass Fehler auftreten etwas geringer.
 

## Iterator

![Iterator UML Diagramm](../assets/swt/uml/iterator.svg)

## Stellvertreter

![Stellvertreter UML Diagramm](../assets/swt/uml/proxy.svg)

## Vermittler

![Vermittler UML Diagramm](../assets/swt/uml/mediator.svg)

