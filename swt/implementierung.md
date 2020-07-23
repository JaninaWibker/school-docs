# Implementierungsphase

In der Implementierungsphase ist wichtig zu wissen, wie man:

- UML Diagramme korrekt in Quellcode umsetzt,
- selbstkontrolliert programmiert
- parallelisiert.

## UML Diagramme umsetzen

## Selbstkontrolliertes Programmieren

Bei der selbstkontrollierten Programmierung geht es darum aus seinen vorherigen Fehlern zu lernen, daher dokumentiert man
diese. Man versucht damit häufige Fehler wie "off-by-one"-Fehler, Indexfehler und NullPointerExceptions vermeiden.

Man legt sich ein **Fehlerlogbuch** an indem man typischen Fehler wenn man sie findet dokumentiert. Man sollte nicht jede
Kleinigkeit so dokumentieren, sondern nur die wichtigen und relevanten, also welche die einem viel Zeit gekostet haben
oder lange unentdeckt waren.

Man sollte jedem Fehler eine eindeutige Id geben, meistens eine fortlaufende Zahl, ein Datum (wann entstanden, wann entdeckt),
Ursache des Fehlers inklusive einer kurzen Beschreibung / einem Titel und die Phase in der der Fehler entdeckt wurde (Definition,
Entwurf, Implementierung).

Mit so einem Fehlerlogbuch (meistens sollten GitHub Issues oder ähnliches ausreichen) kann man dann schnell erkennen, ob es
schonmal so einen Fehler gab, wodurch dieser hervorgerufen wurde und vielleicht auch was ihn behoben hat.

Eine weitere Sache die empfehlenswert ist ist ein **Zeitlogbuch** in dem man erfasst was man wann gemacht und wieviel Zeit man
investiert hat. Dies kann einem helfen bessere [Aufwandsschätzungen](/swt/aufwandsschätzung.md) abzugeben. Des weiteren kann man
damit oft erfassen, ob man wirklich so produktiv ist wie man denkt oder ob man sich oft von Kleinigkeiten ablenken lassen lässt.
Hierfür ist es nützlich Software zu verwenden, welcher man einfach kurz sagen kann "ich bin jetzt am arbeiten" / "ich bin jetzt
nicht mehr am arbeiten" woraufhin die Software dann Timer startet bzw. stoppt und einem die Daten ausgeben kann.

## Parallelismus
