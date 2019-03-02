# Netzwerkkomponenten

Die Komponenten eines Netzwerkes werden oft in zwei Kategorien aufgeteilt: **aktive** und **passive** Komponenten. Passive Komponenten sind die Komponenten, welche keine eigene Spannungsversorgung benötigen, wie z.B. Kabel. Aktive Komponenten hingegen sind die, die eine Spannungsversorgunge benötigen und somit alle restlichen.

## Passive Komponenten

Zu den passiven Komponenten zählt man generell:
- Kabel ([TP](/netzwerke/twisted_pair), [LWL](/netzwerke/lwl))
- Anschlussstecker
- Patchfelder

## Aktive Komponenten

Die meisten Komponenten eines Netzwerkes sind Aktive. Zu den Aktiven zählen:
- Netzwerkadapter
- [Repeater](/netzwerke/netzwerkkomponenten?id=repeater)
- [Hubs](/netzwerke/netzwerkkomponenten?id=hub)
- [Bridges](/netzwerke/netzwerkkomponenten?id=bridge)
- [Switches](/netzwerke/netzwerkkomponenten?id=switch)
- [Router](/netzwerke/netzwerkkomponenten?id=router)
- [Access Points](/netzwerke/netzwerkkomponenten?id=access-point)
- Gateways
- Server
- Proxys
- [Firewalls](/netzwerke/firewall)
- Load Balancer

und viele weitere.

## Aufgaben und Eigenschaften der Komponenten

### Repeater

Ein *Repeater* erweitert das Netzwerk um ein weiteres Segment, er verstärkt einfach das bei ihm ankommende Signal und schickt es weiter. Er führt keine intelligenten Entscheidungen durch, ob dies nötig ist oder nicht, wie es z.B. Bridge oder Switch tun, sondern sorgt nur für ein physikalisch weiter spannendes Netz durch Restaurierung des Signals. Es kann maximal 5 Segmente bzw. 4 Repeater geben bevor trotz der Repeater das Signal nichtmehr gut und eindeutig erkennbar ist. 

### Hub

Ein *Hub* ist vom Aussehen her ähnlich wie ein Switch aufgebaut. Er hat mehrere Ethernet Ports, an denen Endgeräte angeschlossen werden können. Wenn ein Frame zum Hub geschickt wird, dann schickt er diesen an **allen Ports** weiter. Er guckt nicht wie ein Switch es tut, wohin ein Frame muss, sondern schickt diesen Frame einfach jedem. Heutzutage kommen Hubs fast garnicht mehr vor und sind in der Regel von Switches ersetzt worden, da diese weitaus mehr Vorteile bieten. Bei Hubs passiert *packet collision* sehr oft. 

### Bridge

Eine Bridge verbindet zwei Segmente eines Netzwerkes miteinander und entscheidet, wenn Frames aus einem Segment ankommen, ob diese in das andere Segment weitergeleitet werden sollen oder nicht. In dieser Hinsicht ist die Bridge gut vergleichbar mit einem Switch, mit dem Unterschied, dass ein Switch dieses für weitaus mehr Segmente macht (bei einem Switch redet man dann aber nichtmehr unbedingt von getrennten Segmenten, da es sonst unmängen viele Segmente geben würde)

### Switch

Ein *Switch* verbindet viele Endgeräte miteinander und entscheidet intelligent, welche Frames wohin müssen. Wenn ein Frame bei ihm ankommt, schickt er ihn, falls er das Ziel eindeutig einem Port zuordnen kann, nur an einem Port heraus. Falls dies nicht möglich ist, schickt er den Frame ähnlich wie ein Hub an allen Ports (außer dem Port über den der Frame empfangen wurde) heraus. Über Zeit merkt der Switch sich an welchem Port welche Endgeräte (es können mehrere Endgeräte an einem Port liegen (z.B. durch einen weiteren Switch)) liegen und speichert dies im sogenannten *CAM-Table* ab (Content Addressable Memory).

### Router

Ein *Router* verbindet mehrere (meistens zwei) IP Netze miteinander und erlaubt das schicken von Layer 3 Packets von Netz zu Netz. Frames werden vom Router nicht in die anderen Netze weitergeleitet. Router stellen auch oft die Verbindung zum Internet da. Da ein Router auf Layer 3 arbeitet und somit nicht mit MAC, sondern mit IP Adressen arbeitet muss er diese auch korrekt übersetzen. 

### Access Point

Ein *Access Point* stellt WLAN für das Netzwerk zur Verfügung. Er leitet die notwendigen Frames an die WLAN Endgeräte weiter und fungiert somit ähnlich wie eine *Bridge*, nur für kabellose Verbindungen. 