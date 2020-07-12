# Steuerungsmuster

## Befehl

Beim Entwurfsmuster Befehl hat man ein Stück Code bei dem man nicht weiß wann oder ob er überhaupt ausgeführt wird.
Dies passiert oft bei Benutzeroberflächen.

Man hat ein Objekt eines Functional Interface, welches den besagten Code in der einen Methode die implementiert werden
muss hat. Dieser Befehl kann dann ausgeführt werden wenn benötigt.

![Befehl UML Diagramm](../assets/swt/uml/command.svg)

Functional Interfaces sind etwas einigermaßen besonderes in Java, da es keine konkreten (dem Programmierer bekannten)
Typen *Functional Interface* gibt, sondern nur einige Wege ein Functional Interface zu implementieren.

Überall wo eine **bestimmtes** Functional Interface erwartet wird kann man eine *Lambda Expression*, *Method Reference* oder
*Constructor Reference* mitgeben. Hierbei ist zu beachten, dass dies natürlich nur klappt wenn die Typen der Eingabeparameter
sowie der Rückgabewert übereinstimmen.

Als verlangten Typen kann man, da einem kein konkreter Typ Functional Interface bekannt ist, nur bestimmte Functional
Interfaces verlangen wie zB. `Function`, `Consumer`, `Predicate` oder `Runnable`. Alle Objekte die ein konkretes Functional
Interface repräsentieren werden wie alle anderen Objekte sonst behandelt. Daraus folgt, dass man nicht zwischen verschiedenen
Typen von konkreten Functional Interfaces *casten* kann.

Um ein konkretes Functional Interface zu erstellen muss ein Interface nichts tun bis auf **genau** eine Methode zu haben,
die implementiert werden muss. Methoden mit default-Implementierungen zählen nicht dazu, genau so wie Methoden, welche
jedes Objekt eh schon besitzt indem es sie von Object erbt.

Man kann zusätzlich die Annotation `@FunctionalInterface` hinzufügen, dies ist aber rein optional und hilft der JVM nur
dabei bessere Fehlermeldungen zu produzieren.

Ein Sideeffect dieser Strategie alles als Functional Interface zu taggen, welches diese Anforderungen erfüllt ist, dass
beispielsweise auch `Iterable` ein Functional Interface ist.

## Master/Worker

Bei Master-Worker handelt es sich oft um parallelisierte Programmteile. Hierbei hat man einen "Master", welcher den
"Workern" ihre Arbeit zuteilt. Dies ist vorallem dann gut anwendbar, wenn das Problem in viele kleinere voneinander getrennte
Probleme aufteilbar ist. Dies kann oft bei mathematischen Problemen auftreten und daher wird dabei oft, zumindest wenn
es sich um sehr sehr große Datensätze handelt, auf ein solches Design zurückgegriffen.

![Master/Worker UML Diagramm](../assets/swt/uml/master-worker.svg)

