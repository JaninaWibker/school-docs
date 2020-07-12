# Bequemlichkeitsmuster

## Bequemlichkeitsklasse

Eine Bequemlichkeitsklasse ist eine Klasse, welche entweder für sich selbst oder für eine andere Klasse Methoden
anbietet, welche nicht alle sonst benötigten Parameter brauchen, da diese mit Standardwerten aufgefüllt werden.

![Bequemlichkeitsklasse UML Diagramm](../assets/swt/uml/convenience-class.svg)

## Bequemlichkeitsmethode

Die Bequemlichkeitsmethode ist sehr ähnlich der Bequemlichkeitsklasse. Eine Bequemlichkeitsklasse besteht
grundsätzlich aus mehreren Bequemlichkeitsmethoden.

![Bequemlichkeitsmethode UML Diagramm](../assets/swt/uml/convenience-method.svg)

Die Bequemlichkeitsmethode ist dann gut anwendbar, wenn Methoden oft mit den gleichen Parametern aufgerufen werden.

## Fassade

![Fassade UML Diagramm](../assets/swt/uml/template.svg)

## Null-Objekt

Ein Null-Objekt ist vergleichbar mit `NOP` bei Instruktionen. Es ist zwar eine Instruktion, aber es tut nichts.
Der Grund warum man dieses Verhalten für ein Objekt haben will ist folgendes: Anstelle permanent zu überprüfen,
ob ein übergebenes Objekt nicht `null` ist nutzt man an den Stellen an denen man sonst `null` übergeben würde immer das Null-Objekt. Damit kann man sich die `null`-checks sparen und kann ohne Bedenken alle Operationen auf dem Objekt ausführen.
Als Implementation für Methoden hat das Nullobjekt immer ein `NOP`.

```java
if(obj != null) {
  obj.action();
}
```

wird mit einem Nullobjekt zu

```java
obj.action(); // NOP falls Nullobjekt
```

![Null-Objekt UML Diagarmm](../assets/swt/uml/null-object.svg)

Um genau einem Objekt diese Eigenschaft zu geben, dass für alle Operationen eine NOP hat muss man entweder eine
Unterklasse oder die Eigenschaften der Klasse in eine abstrakte Überklasse hochheben und dann 2 Implementationen
dieser machen: Einmal die eigentliche Klasse mit der gewollten Funktionalität und dann einmal das NullObjekt. Nur
weil das NullObjekt "Objekt" im Namen hat heißt es hierbei nicht, dass es sich nicht um eine ganze Klasse handelt.

Im UML Diagramm ist die Variante mit der abstrakten Überklasse gezeigt.
