# DHCP

**DHCP** steht für *Dynamic Host Configuration Protocol*. DHCP ist Grundlegend dafür da, Geräten im Netzwerk spezifische IP Adressen zuzuweisen, diesen Geräten Informationen über das Netzwerk zu geben, wie z.B. *default gateway*, *dns server*, *time server* und vieles weitere.

DHCP ist also ein Protokoll zur Vermittlung von Daten zu Clients, die diese Daten brauchen um überhaupt im Netzwerk klar uz kommen; die Clients haben zunächst noch keine IP Adresse, also können sie auch nicht Unicast nutzen, daher ist fast die ganze Kommunikation zwischen Server und Client über Broadcast traffic.

## Commands

![Ablauf der initialen IP Vergabe](../assets/LTI-diagrams-DHCP-query.svg)

### Discover

Wenn sich ein Client das erste mal mit einem Netzwerk verbindet besitzt er noch keine IP Adresse. Um eine zu erhalten muss er den DHCP Server fragen. Da die IP des Servers dem Client jedoch unbekannt ist und er selber noch keine IP Adresse hat muss er Broadcast verwenden.
Der Client nutzt hierfür dann die `0.0.0.0`-Adresse als *source* für die Broadcast message. Der Client schickt seine MAC-Adresse und eine selbst generierte zufällige 4 Byte lange *Transaction ID* mit im *Discover packet*

### Offer

Der DHCP Server antwortet auf das Broadcast *Discover packet* mit einem sogenannten *Offer packet*. Es enthält eine freie IP Adresse und die Zeit ihrer Gültigkeit. Dies ist zunächst ein Angebot des DHCP Servers und noch keine Bestätigung für die Zuweisung bzw. Nutzung dieser IP Adresse, der Client bestimmt ob er diese IP Adresse haben will. Falls nicht muss der Client sich aber eventuell etwas anderes überlegen um an eine IP Adresse zu gelangen.

### Request

Der Client hat die *Offer* erhalten und schickt nun ein *Request packet* indem der Client sagt, dass er dieses Angebot für diese IP Adresse annehmem will. Hierbei schickt der Client direkt Anfragen über subnetmask, default gateway, DNS Server mit.

Auch dieses Packet nutzt immernoch Broadcast und nicht Unicast.

### Acknowledge

Es folgt die finale Bestätigung des Servers über die Vergabe der IP Adresse. In ihr sind die inzwischen beidseitig bestätigte IP Adresse des Clients und die *Lease time*, sowie die angefragten Informationen (subnetmask, default gateway, DNS Server, time server, ...) enthalten.

## zeitlicher Ablauf

![zeitlicher Ablauf von verteilten IP Adressen](../assets/LTI-diagrams-DHCP-timeline.svg)

Nach **50%** der *Lease time* sendet der Client ein *Renewal packet* an den DHCP Server und fragt um eine Verlängerung der *Lease time* (deshalb wird dieser Zeitpunkt auch *Renewal time* genannt). Der DHCP Server lehnt entweder die Anfrage auf Verlängerung ab oder stimmt ihr zu. Zu diesem Zeitpunkt sendet der DHCP Server außerdem alle Informationen die sich geändert haben wie z.B. neue DNS Server IP oder ähnliches. Hiermit wird die Zeit wieder zurückgesetz.

Nach **87.5%** der Zeit, auch *Rebinding time* genannt, sendet der Client ein *Rebinding packet*. Da er keine Antwort vom alten DHCP Server erhalten hat broadcastet er dieses Packet in das lokale IP Netz und fragt nach Verlängerung, wenn er diese erhält wird die Zeit wieder zurückgesetzt.

Falls der Client auch auf die *Rebinding packets* keine Antwort erhält und die *Lease time* abgelaufen ist fängt er wieder mit einem *Discover packet* an.

## Verhalten bei mehreren DHCP Servern

Da alle Packets gebroadcastet werden fühlen sich alle DHCP Server bei z.B. Discover packets angesprochen. In dem Fall, dass mehrere DHCP Server antworten nutzt der Client den Server, der als erster geantwortet hat.

Die DHCP Server müssen sich über den IP Adress Pool absprechen oder jeweils nur einen kleineren Teil des gesamten Pools zugewiesen haben. Diese Komplikationen sprechen gegen mehrere DHCP Server, der einzige Vorteil ist die Redundanz bei Ausfällen.

## DHCP-Relay-Agent

Ein **DHCP-Relay-Agent** ist für die Kommunikation zwischen Client und DHCP Server zuständig, wenn diese sich in verschiedenen IP Netzen befinden.

Er wird benötigt, da viele DHCP Packets Broadcast und nicht Unicast nutzen und Router generell Broadcast traffic nicht in andere Netze übertragen, da Broadcast Adressen eine limitierte Reichweite haben (jedes Subnet hat eine eigene Broadcast Adresse und somit werden Broadcasts über diese Adresse nicht an andere Subnets weitergegeben). Damit also diese packets vom Router weitergeleitet werden wandelt der **DHCP-Relay-Agent die Broadcast packets in Unicast packets um** und schickt sie direkt an den **DHCP Server**, welcher dann die sonst Broadcast packets einfach als **Unicast** zurück schickt, welche dann vom **DHCP-Relay-Agent** ins eigene Netzwerk wieder als **Broadcast** geschickt werden können.

Der DHCP-Relay-Agent arbeitet also als **middle-man** um die Zuweisung von IP Adressen in komplexen Netzwerken zu zulassen.
