# Architekturen

Architekturstile beschreiben den abstrakten Aufbau eines Softwareprodukts. Ein Softwareprodukt
kann durch nicht nur einen Architekturstil beschrieben werden, es ist meistens so, dass mehrere
das Produkt zusammen beschreiben. Beispielsweise könnte eine *Rahmenarchitektur* verwendet werden
um im Klienten ein *Modell-Präsentation-Steuerung* umzusetzen wobei das Modell teilweise auf einem
Server (*Klient/Dienstleister*) in Form einer Datenbank liegt.

## Schichtenarchitektur

Die Software ist gegliedert in mehrere übereinander liegende Schichten. Jede Schicht hat eine
wohldefinierte Schnittstelle um mit den anderen Schichten zu interagieren. In manchen Versionen
kann eine Schicht nur mit ihren direkten "Nachbarn" (also eine Schicht drunter/drüber) in irgendeiner
interagieren, in manchen ist dies nicht so streng gesehen.

Generell nutzt eine Schicht die Dienste die eine darunter liegende Schicht bereit stellt. Das umgekehrte
findet nicht statt. Im allgemeinen kann man die Schichten oft als weitere Abstraktionen ansehen, die es
einem immer einfacher machen die gewünschten Ergebnisse zu erreichen.

Eines der bekanntesten Beispiele für eine Schichtenarchitektur ist vermutlich das [OSI-Schichtenmodell](/netzwerke/osi_schichtenmodell).

## Datenablage

> Depot / Repository

Die Datenablage teilt viele Eigenschaften mit der Schichtenarchitektur, man kann es als eine konkrete Anwendung dieses
betrachten bei welcher man nur 2 Schichten hat. Einmal die Datenablage selbst und dann das System, welches diese nutzt.
Die Datenablage ist für die Verwaltung von Daten da und bietet eine einfache Schnittstelle womit das darüberliegende
Subsystem dies einfach nutzen kann.

Hierbei ist die Schnittstelle relevant, da die Systeme lose gekoppelt sein sollen wodurch austauschen einfach möglich ist.

Es können auch mehrere Subsyteme auf die gleiche Datenablage zugreifen und man kann auch verschiedene Implementationen
der Datenablage haben, beispielsweise eine lokale Datenbank und eine entfernte Datenbank, welche aber über die gleiche
Schnittstelle benutzbar sind.

## Klient/Dienstleister

> Client/Server

Bei der Klient/Dienstleister Architektur hat man einen oder mehrere Klienten, welche einen bestimmten Dienst
vom Dienstleister nutzen. Hierbei wird die Kommunikation immer vom Klienten angestoßen und der Dienstleister
antwortet darauf, nicht andersrum. Falls man eine beidseitige Kommunikation haben will muss man dies durch
*busy-waiting* oder ähnliches umsetzen.

Ein Klient kann auch mehrere Dienstleister gleichzeitig nutzen.

## Partnernetze

> Peer-to-peer Netzwerke

Bei Partnernetzen kann jeder involvierte Klient sowohl als Dienstleister, als auch als Klient fungieren. Somit
hat jeder alles implementiert und kann einen beliebigen Teil des Systems zumindest von der Funktionsweise her
problemlos ersetzen. Dadurch kann man theoretisch sehr hohe Ausfallsicherheit erreichen, es ist aber in Realität
oft schwierig gut und korrekt zu implementieren, da man zum einen oft Daten zwischen allen Klienten austauschen
muss und dabei dezentralisiert Authentifikation und Autorisierung umsetzen muss um Daten vertrauen zu können und
mit Ausfall von Klienten rechnen muss.

## Fließband

> Pipeline

Bei dem Fließband hat man mehrere hintereinandergestellte "Produktionsschritte" (eigenständige Prozesse / Fäden) wie
auf einem Fließband angeordnet. Dass "Produkt" was dabei das Fließband durchfährt sind hierbei Datenströme, welche
von jedem Prozess/Faden verändert werden können.

Oft hat man bei Compilern und Bild-/Videobearbeitung solche Fließbänder.

## Modell-Präsentation-Steuerung

> MVC - Model View Controller

**TODO**

## Rahmenarchitektur

> Framework

Eine Rahmearchitektur ist ein nahezu vollständiges Programm mit geplanten "Lücken", welche vom eigenen Code gefühlt werden
sollen, welche dann von der Rahmenarchitektur genutzt werden.

Die Rahmenarchitektur sorgt dafür, dass die Einschübe die man getätigt hat zum richtigen Zeitpunkt aufgerufen werden und
somit die gewollte funktionalität des programmes umgesetzt wird. vorallem wenn es um graphische Benutzeroberflächen geht
werden Frameworks sehr viel verwendet.

![Beispiel Klassendiagramm für eine Rahmenarchitektur](../assets/swt/uml/framework.svg)
