# Abnahme, Wartung und Pflege

Man kann diese Phase grob aufteilen in die Teile:
- Abnahme durch den Kunden
- Einführung des Systems beim Kunden
- Wartung & Pflege des Systems

## Abnahme

Die Abnahme des Systems erfolgt formal dadurch, dass der Kunde selbst den Abnahmetest durchführt und
solange dort keine Fehler auftreten (bzw. nur Kleinere bei denen dann ausgemacht wird, dass diese
noch korrigiert werden) dann durch eine schriftliche Erklärung der Annahme des Produktes zustimmt.

Diese noch zu korrigierenden Fehler werden in einem sogenannten **Abnahmeprotokoll** protokolliert,
zusammen mit den sonstigen Ergebnissen des Abnahmetests (Belastbarkeit des Systems, ...).

Dies ist natürlich alles nur anwendbar, wenn es sich um einen wirklichen Kunden handelt und nicht um
einen anonymen Markt. Die Einführung ist in dem Fall auch *anders* (kann wenn man inkrementell Features
hinzufügt genauso komplex sein, kann aber auch einfacher sein und die erste Version zu installieren ist
meist bei weitem Problemfreier).

## Einführung

Die Einführung des Systems in den laufenden Betrieb kann komplex sein. Zur Einführungsphase gehört zudem
auch nicht nur die Installation des Systems beim Kunden, sondern auch die Schulung der Benutzer / Personals
über die neue Software.

Der Grund warum die Inbetriebnahme eines neuen Systems komplex sein kann ist, dass der Kunde nicht von Null
startet, er hat vermutlich schon ein altes System was *halbwegs* funktioniert, seine Mitarbeiter kennen das
alte System, aber nicht das neue und vieles weitere. Es ist manchmal einfacher etwas komplett von neu zu
machen anstatt etwas halb funktionierendes mit etwas Besseren zu ersetzen.

Falls es noch nicht digitale Datenbestände gibt müssen diese zunächst digitalisiert werden, also z.B.
eingescanned, oder von Hand abgetippt werden. Das viel größere Problem sind aber Datensätze, welche sich
konstant ändern (beispielsweise Posts von nutzern, hochgeladene Videos, ...). Hierbei muss man dann überlegen
wie man das Problem angehen kann:

**direkte Umstellung**: Man kann versuchen auf einmal alle Daten umzuwandeln zum neuen System und dann einzuspeisen.
Hierbei kann es aber problematisch werden, wenn in diesem kleinen Zeitabschnitt noch Daten dazu kommen oder sich
sogar ändern. Des weiteren muss man dann an irgendeinem Zeitpunkt sagen, dass man das alte System abschaltet und
das neue hochfährt. In diesem Zeitraum hat man dann aber einen Ausfall der Software und sie ist unverfügbar.
Dies kann problematisch oder auch ganz akzeptabel sein. Wenn es ein internes System für Angestellte ist, kann
man es vermutlich relativ problemlos über Nacht einmal ausschalten und durch das neue ersetzen, wenn es aber
Kundengerichtete Software ist, dann kann dies problematisch sein. Ein weiteres Problem ist, dass wenn das
neue System dann aus irgendwelchen Gründen nicht ganz richtig funktioniert, nicht startet, ... man ein großes
Problem hat, weil man dann nämlich erstmal kein System hat bis der Fehler behoben ist.

**Parallellauf**: Eine weitere Strategie die man fahren kann ist beide Systeme gleichzeit am laufen zu haben.
Hierbei hat man das Problem, dass man hohe Kosten hat, da 2 Systeme am laufen zu halten natürlich tiefer in den
Geldbeutel greift als nur eins. Des weiteren muss man es irgendwie hinkriegen, dass nicht alles doppelt gemacht wird.
Beispielsweise will man nicht Rechnungen zwei mal verschicken und Pakete vorallem nicht. Und man muss eventuell auch
dafür sorgen, dass die gleiche Art von Anfragen von beiden Systemen akzeptiert werden. Dafür hat man aber ein
weitaus sichereren Umstieg. Im Hintergrund wenn beide Systeme arbeiten kann man langsam die Daten des alten Systems
Stück für Stück auf das neue System migrieren und irgendwann kann man das alte System komplett abschalten.

**Versuchslauf**: Hierbei hat man wie beim *Parallellauf* auch zwei Systeme am laufen, nutzt das neue aber zunächst
nur mit alten Daten um es nochmal genauer zu testen. Das neue System kommt nicht mit relevanten aktuellen Daten in
Verbindung und sobald man dann nach etwas Testen zuverlässig ist kann man dann wie bei der *direkten Umstellung*
das alte System auf einmal durch das neue ersetzen oder auch noch einen richtigen *Parallellauf* machen.

**Stufenweise Umstellung**: Eine weitere Möglichkeit, solange beide Systeme relativ modular sind ist, den Umstieg
stufenweise zu machen. Hierbei ersetzt man einzelne Subsysteme durch neuere und kann somit eventuell auch das Problem
der Datenmigration etwas eindämmen, da man verschiedene Datenmengen zu verschiedenen Zeitpunkten austauschen kann.
Problematisch ist hierbei wenn die Systeme nicht gut zueinander passen. Wenn das neue System fast das gleiche ist wie
das alte war es vielleicht auch nicht so nötig dieses komplett auszutauschen, vielleicht hätten einzelne Subsysteme
erneuern gereicht.

Falls man keinen direkten Kunden, sondern nur einen anonymen Markt, hat kann man auch **Betatesting** und
**AB testing** nutzen um mögliche Fehler aufzudecken und (Teile der) Nutzer langsam mit dem neuen System vertraut zu
machen. Die sonstigen Umstellungsverfahren sind auch teilweise anwendbar.

## Wartung und Pflege

Hier gibt es Unterschiede davon abhängig ob der Kunde selber testet oder ob man dies übernimmt. Wenn der Kunde
selber testet muss man ihm weitaus mehr als nur das fertige Produkt zur Verfügung stellen. Der Kunde benötigt
dann gerne mal den Quelltext vom Produkt, die verwendeten Tests, die Dokumentation und vieles weitere, was im
Entwicklungsprozess entstanden ist.

Wenn der Kunde dies nicht selber macht wird dies alles oft nicht benötigt und man kann weniger an den Kunden
raus geben.
