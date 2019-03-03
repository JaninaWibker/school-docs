# Firewall

Eine *Firewall* ist wichtig, um die Sicherheit der Endgeräte und oder Server in einem Netzwerk sicherzustellen. Die Firewall sorgt dafür, dass nur die Packets herein und heraus gehen, die dies auch sollen bzw. dürfen. Ohne eine Firewall ist der Betrieb von Servern eher unsicher, da durch das Nutzen von [DNAT](#/netzwerke/nat?id=destination-nat) (aka. *Exposed Host* / *Port Forwarding*) sich eine potenzielle Sicherheitslücke öffnet.

## DMZ

Ein Konzept für Firewall Nutzung ist die sogenannte *Demilitarized Zone* (DMZ). Hierbei werden 2 Firewalls eingesetzt, die das lokale Netzwerk zunächst vom Internet abgrenzen und dann nochmal eine Grenze im lokalen Netzwerk zwischen Servern und den wirklichen Endgeräten implementieren. Hierdurch zunächst erstmal alle Geräte vom Internet durch mindestens eine Firewall geschützt. Dazu kommt noch, dass die Endgeräte von den Servern getrennt sind, was dafür sorgt, dass die Nutzer keinen direkten Zugriff auf die Server haben, was immer gut ist, und das die Nutzer nicht die Server mit irgendetwas infizieren können und andersrum, falls eins der beiden komprimiert wurde.

![DMZ](../assets/LTI-diagrams-DMZ.svg)

Man kann zudem auch noch spezifischere Firewall Einstellungen machen, da die Interessenkonflikte zwischen Endgeräte und Server nicht von einer Firewall gehandhabt werden müssen, sondern von zwei getrennten (die Server brauchen DNAT, was aber für die Endgeräte nicht Vorteilhaft ist, bzw. ein Sicherheitsrisiko darstellt). 

## Arten von Firewalls

Es gibt verschiedene Arten von Firewalls, welche auf anderen Konzepten basieren und auf verschiedenen Layern arbeiten. 

### Packet-filtering Firewalls

*Packet-filtering Firewalls* sind die ältesten und grundlegendsten Firewalls, sie machen nicht viel mehr als die herein und herausgehenden Packets Aufgrund ihrer *Zieladdresse*, *Herkunftsadresse*, *Typ* und *Port* zu untersuchen und zu entscheiden, ob sie weiter dürfen oder nicht. Sie sind relativ einfach zu umgehen, sind dafür aber relativ ressourcensparend.

### Circuit-Level Gateways

*Circuit-Level Gateways* sind ähnlich wie Packet-filtering Firewalls ressourcensparend. Circuit-Level Gateways überprüfen ob TCP handshakes korrekt bzw. legitim ablaufen. Dies reicht nicht als einzige Firewall solution aus um genügend Schutz zu gewährleisten. 

### Stateful Packet Inspection Firewalls

*Stateful Packet Inspection Firewalls* ist eine Kombination aus den beiden vorherigen Firewalls und ist somit sicherer als die vorherigen alleine, dafür ist die Ressourcenauslastung aber auch höher.

### Application Firewalls / Proxy based Firewalls

*Proxy based Firewalls* oder auch *Application Firewalls*, da sie auf dem *Application Layer* arbeiten, sind vergleichbar mit einem Proxy. Wenn eine Verbindung aufgebaut werden soll (TCP Handshake) wird dies zunächst mit dem Proxy Server gemacht. Dieser baut dann die richtige Verbindung zum Ziel, welches das Endgerät erreichen will, auf. Nachdem der Proxy dann den TCP Handshake mit dem Ziel durchgeführt hat, und ähnlich wie ein *Circuit-Level Gateway* kontrolliert hat ob der Handshake legitim ist, kann er die Packets inspizieren und untersuchen, ob sie zum Endgerät weiter geschickt werden sollten. Findet er dabei etwas, was gegen seine Regeln bzw. Konfiguration verstößt wird die Verbindung abgebrochen und die Packets nicht zum Endgerät geschickt. Das Endgerät hat hierbei nie selber eine Verbindung zum *"bösen"* Ziel aufgebaut. Dies sorgt für mehr Anonymität und Sicherheit der Endgeräte. Natürlich führt die Application Firewall auch simples Packet-filtering durch. Ein großer *Nachteil* dieses Systems ist es, dass es die *Geschwindigkeit* des Netzwerkes, vorallem die *Latenz*, stark beeinflusst und gerne mal zu Problemen mit SSL Zertifikaten und ähnlichem führt, da der Proxy Server theoretisch etwas ähnliches wie eine  *Man-in-the-middle-attack* durchführt, was sonst durch Zertifikate und andere kryptographische Lösungen verhindert werden soll. 