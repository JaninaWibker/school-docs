# Prozessmodelle

## nicht-agile Prozesse

Prozessmodelle sind Modelle zur Planung des kompletten Ablaufs, von Planung bis Abnahme des Kunden.

### Programmieren durch Probieren

> trial and error

Besteht fast nur aus Programmieren und aus sehr wenig Planung und ist aufgrunddessen nicht unbedingt das idealste
für Projekte ab einer gewissen Größe.

Der geschriebene Code ist relativ oft unstrukturiert. Für kleine Projekte als Einzelperson aber trotzdem relativ
gut nutzbar und eigentlich dass, was intuitiv meistens auch gemacht wird. Ab einer gewissen Größe des Projektes
sollte aber mehr Planung dazu kommen.

### Wasserfallmodell

Die bisher besprochenen Phasen nacheinander abarbeiten:

- **Planung**: Lastenheft
- **Definition**: Pflichtenheft, evtl. Benutzerhandbuch
- **Entwurf**: Entwurfsdokumente, UML Diagramme, ...
- **Implementierung**: Softwarekomponenten, Dokumentation
- **Testen**: Tests, "fertiges" System
- **Wartung und Pflege**

Nicht zu empfehlen, da sobald ein Fehler in einer vorherigen Phase entdeckt wurd dieser nicht berichtigt werden kann
und generell die vorherigen Phasen oft mehr Informationen aus laut Wasserfallmodell zukünftigen Phasen brauchen.

### V-Modell XT / 97

**TODO**

### Prototypmodell

Beim Prototypmodell baut man zunächst einen kleinen Prototypen, welcher die Funktionalität der Software zeigen soll. Das
ist meistens einfach die Benutzerschnittstelle welche man dem Kunden dann präsentieren kann, da man schlecht einen
Prototypen für Server bauen kann und dem Kunden damit überzeugen kann. Der Prototyp ist gut um nochmal Rückmeldung vom
Kunden zu kriegen über die Anforderungen des Produktes.

Man **muss** den Prototyp wegwerfen wenn man mit der wirklichen Programmierung des Produktes anfängt, da der Prototyp oft
schnell und unsauber umgesetzt wurde.

Nachdem man einen Protoypen gemacht hat und diesen wieder entsorgt hat nutzt man dann meistens einfach ein anderes Prozessmodell
wie z.B. Scrum um die Entwicklung danach fortzusetzen.

### Iteratives Modell

> auch "successive versions" genannt

Das iterative Modell ist eine Erweiterung des Prototypmodells. Die Idee dahinter ist, dass zumindest *Teile* des Prototypen
gut waren und nicht weggeworfen werden müssen.

Man entwickelt also einen (höherwertigen) Prototypen wie beim Prototypmodell, gibt aber mehr acht bei den Komponenten diese
gut zu implementieren und fügt dann **Schritt für Schritt** diesem Protoypen richtige Funktionalität hinzu bis man bei einem
wirklichen Softwareprodukt angekommen ist und nicht mehr nur einen Protoypen hat.

Das Ziel ist es nicht all zu viel Arbeit "umsonst" zu machen nur um den Kunden das Programm schon vorführen zu können.

### Synchronisiere und Stabilisiere

> Auch "Microsoft-Modell"

**TODO**

## agile Prozesse

Ein agiler Prozess hat minimale Vorausplanung, inkrementelle Planung und vermeidet unterstützende Dokumente wie Dokumentation
oder Pflichtenhefte. Der Kunde ist generell sehr stark mit einbezogen und kann somit schnelle Rückmeldung geben bei Nachfragen
oder Unklarheiten. Beispiele sind **Scrum**, **Extreme Programing**.

### Extreme Programming

**TODO**

#### Paarprogrammierung

Bei der Paarprogrammierung hat man 2 Programmierer vor einem Computer mit nur einer Maus und einer Tastatur. Dabei hat der eine
Programmierer die Rolle des "Fahrers" und der andere die des "Beifahrers". Dabei ist der Fahrer der, der das wirkliche programmieren
macht und der Beifahrer der, der dabei unterstüzung leistet. Somit ähnlich zu einem wirklichen Beifahrer der die Navigation macht.

Der Beifahrer guckt währender der Fahrer den Code schreibt drüber und überlegt, ob:

- nicht ein Import fehlt,
- auch keine off-by-one Fehler vorkommen
- ob etwas richtig benutzt wurde
- ...

und teilt seine Erkenntnisse dann dem Fahrer mit.

Die Effektivität von Paarprogrammierung ist relativ fragwürdig. Es hat seine Nutzen um neue Entwickler an das Projekt heran zu bringen
oder Programmierunerfahrenen unter die Arme zu greifen, kann aber dafür sorgen, dass 2 Entwickler die Arbeit machen die einer alleine
genau so gut machen hätte können. Wenn Fahrer und Beifahrer keine gute Synagie haben kann Paarprogrammierung auch relativ ineffizient sein.
Vorallem für erfahrene Entwickler ist Paarprogrammierung nicht optimal.

#### Testgetriebene Entwicklung

> Test-Driven Development

Bei *TDD* schreibt man Tests bevor man die Implementierung schreibt. Dies sorgt dafür, dass man direkt beim implementieren eine Metrik dafür hat
wie fehleranfällig die Implementierung ist und wie weit man schon fortgeschritten ist mit der Umsetzung.

![Testgetriebene Entwicklung](../assets/swt/tdd.svg)

Man überlegt sich mithilfe der Anforderungen an die Komponente wie man diese Testen könnte, legt diese Tests an und fängt danach an eine
Implementierung umzusetzen und prüft immer wieder dabei ob schon irgendwelche Tests Grün sind. Sobald alle Tests Grün sind kann man dann
entweder refaktorisieren und die Tests anpassen oder komplett neue Tests schreiben und dann natürlich die Implementation anpassen.

Sobald einem wirklich garnichts mehr einfällt was man Testen könnte ist man fertig und kann sich etwas anderem widmen.

### Scrum

**TODO**

