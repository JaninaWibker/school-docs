# Testen und Prüfen

## Komponententests

> Unittests

Bei Komponententests macht man das, was der Name schon verrät. Man testet die einzelnen Komponenten auf ihre Funktionsweise.
Hierfür zieht man sich die Anforderungen an die Komponente herbei und testet, ob sie die richtigen Ergebnisse liefert und,
was auch sehr wichtig ist, wie sie sich mit fehlerhaften Daten verhält. Sie sollte in den besten Fällen dies erkennen und
korrekt behandeln, also passende fehler produzieren oder ähnliches. sie sollte vorallem nicht super irreguläres Verhalten
zeigen.

## Integrationstest

Vorraussetzung: Jede involvierte Komponente wurde bereits für sich überprüft

Das Zusammenspiel der einzelnen Komponenten wird beim Integrationstest überprüft, nicht die einzelnen Komponenten selbst. Dies ist schon zuvor bei den Unittests passiert.

Man kann hierbei einen iterativen Ansatz benutzen:

Zunächst hat man nur eine kleine Menge an Komponenten schon komplett implementiert und getestet, somit erstellt man sich für die vielen fehlenden erstmal Attrappen und Stummel.
Mit Hilfe dieser schreibt man dann erste Integrationstests in denen man dann das Zusammenspiel der schon implementierten Komponenten testet und vielleicht schon einige Interaktionen
mit den Attrappen. Im Laufe der Entwicklung werden dann immer mehr Attrappen durch wirkliche Implementierungen getauscht und es gibt viel mehr Interaktionen die getestet werden können.
Am Ende sollte man dann bei einem vollkommen implementierten System landen und für die Interaktionen zwischen Komponenten Integrationstests geschrieben haben.

Es gibt verschiedene Anzätze wie man dies strukturiert bzw. zeitlich priorisiert:

- **Big Bang**: es werden erst **alle** Implementationen gemacht und danach erst die Tests geschrieben (keine gute Idee)
- **Top-Down**: Die am höchsten liegenden Komponenten werden zuerst gebaut, somit braucht man also für die darunterliegenden Attrappen / Stummel,
  und man arbeitet sich Schritt für Schritt nach unten runter. Vorteil ist hierbei, dass man dem Kunden das "finale Produkt" sozusagen schonmal
  zeigen kann obwohl nur die oberste Schicht fertig ist, aber diese ist ja genau die Schicht, die der Kunde die meiste Zeit sehen wird.
  Ein Nachteil ist, dass man gerne mal aufwendige Attrappen / Stummel schreiben muss, welche sobalb die richtige Implementation da ist nicht mehr
  viel Nutzen haben werden.
- **Bottom Up**: Die "unten liegenden" Komponenten werden zuerst gebaut und getestet und man arbeitet sich Schritt für Schritt nach oben hoch.
  Vor- und Nachteile sind genau gegensätzlich zu Top-Down.
- **Outside-in**: Eine Kombination aus Top-Down und Bottom-Up, welche von beiden Seiten nach innen arbeitet. (Nicht richtig genutzt)
- **Inside-out**: Das Gegenstück zu Outside-in: Arbeitet sich von der Mitte nach außen. (Auch nicht richtig genutzt)
- **Hardest-First**: Anstatt sich auf eine "Richtung" zu einigen in die man arbeitet implementiert man einfach zunächst die schwersten und
  komplexesten Komponenten und testet sie. Ein großer Nachteil kann hierbei sein, dass diese Komponenten nichts miteinander zu tun haben
  können und man somit für vieles Attrappen bauen muss.

## Systemtest

Der Systemtest prüft das inziwschen komplett implementierte System (Komplettsystem) gegen seine Spezifikation.
Hierbei achtet man nichtmehr richtig darauf in welche Komponenten das System geteilt ist, sondern testet das große ganze.
Man sieht es also eine Art blackbox an und versucht aufzudecken, wo das Programm von seiner Spezifikation abweicht. Gerne
verwendet man hierfür eine so realitätsgeträue Umgebung wie nur möglich, also z.B. ein komplettes Replika der Produktionsumgebung.

Man teilt grundsätzlich den Systemtest in 2 Teile auf: der eine Teil testet die funktionalen Anforderungen, während der andere die
nicht-funktionalen Anforderungen überprüft. Bei dem nicht-funktionalen Systemtest wird z.B. auf:

- Sicherheit
- Benutzbarkeit
- Interoperabilität
- Dokumentation
- Ausfallsicherheit
- und zu guter letzt die Leistung

geachtet.

## Regressionstest

Wenn man einen bereits bestandenen Test zu einem späteren Zeitpunkt nocheinmal ausführt um zu überprüfen, ob sich in der Zwischenzeit nichts
zum schlechteren verändert hat nennt man Regressionstest.

## Abnahmetest

Der Abnahmetest ist dem Systemtest sehr ähnlich. Hierbei gibt es nur die Unterscheidung, dass der Abnahmetest nichtmehr im eigenen Haus durchgeführt wird,
sondern beim Kunden vorort. Mit dem Abnahmetest verifiziert sich der Kunde ein letztes Mal vor der Abnahme, dass wirklich alles korrekt ist. Idealerweise
werden hierbei wirkliche Daten verwendet und die Umgebung ist schon genau die gleiche wie die in der die Software finalerweise laufen wird. Der Kunde kann
sich natürlich auch eigene Tests überlegen, welche er dem System unterstellen will.

Die formale Abnahme durch den Kunden beendet, sobald alle Fehler die noch gefunden wurden behoben sind, die Entwicklung an der Software. Danach geht es dann
in die Wartungs und Pflege Phase des Softwareproduktes über.
