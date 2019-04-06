# NAT - Network Address Translation

Es gibt 2 fundamentale Arten von NAT Routing, einmal **Source Address Translation** und einmal **Destination Address Translation**. Beide haben unterschiedliche Nutzen und Anwendungszwecke.

Allgemein kann man sagen, dass NAT dafür da ist mehrere Hosts zu einer IP Adresse (oder mehreren IP Adressen) zusammenzufassen für die Interaktion mit anderen, außerhalb liegenden Netzwerken (wie z.B dem Internet). Man kann nicht jedem Host eine eigene IP Adresse geben die globally routable ist (zumindest nicht bei IPv4, bei IPv6 sieht das etwas anders aus), welche er dann Global nutzen kann. Wenn ein Host seine interne Adresse nutzt, dann weiß außerhalb vom eigenen IP Netz niemand mehr woher das Packet kam und wohin Antworten sollen.

## Source NAT

Bei *Source NAT* ist es das Ziel die *Source Adresse* von herausgehenden Packets (sowie den *Source Port*) zu ersetzen mit der IP Adresse des Netzwerkes (und einem anderen Port). Man tut dies, da so auch andere Geräte außerhalb des eigenen IP Netzes wissen woher das Packet kam (zumindest von welchem Netz) und dadurch auch wissen wohin Antworten geschickt werden sollen. Man ersetzt den Port, da es in einem Netzwerk mehrere Hosts geben kann die gleichzeitig versuchen über den gleichen Port mit außerhalb liegenden Hosts zu kommunizieren. Der Router ersetzt also den Port mit einem zufällig generierten und notiert sich welcher Port zu welchen zufällig generierten verändert wurde. Bei Antwort wird dann der *Source Port* des Packets mit dem Port ersetzt, der der Router zu diesem abgespeichert hat, also der verwendete *Source Port* den der Host zunächst verwendet hat.

![S-NAT Grafik](../assets/lti/S-NAT.svg)

## Destination NAT

Wobei bei *Source NAT* die *Source Adresse* und der *Source Port* ersetzt werden wird bei *Destination NAT* die *Destination Adresse* und der *Destination Port* ersetzt. Dies wird benötigt, da Server nicht immer eine eigene IP Adresse haben und oft nur Teil eines Netzwerkes sind zusammen mit vielen anderen Servern oder Clients. Man muss aber trotzdem Server von außen erreichen können und es muss klar sein welcher Server adressiert wird, daher muss man dafür sorgen, dass die *Destination Adresse* sowie der *Destination Port* vom Router übersetzt werden. Destination NAT wird auch oft als *Port forwarding* bezeichnet, da man essentiell einen Port nach außen hin öffnet und den gesamten Traffic zur eigenen globalen IP Adresse und diesem spezifischen Port weiterleitet an den Server und einen spezifizierten Port. Bei einer normalen Request - Response Szenario wird also auf Seite des Clients SNAT und auf der Seite des Servers DNAT verwendet (außer der Server hat seine ganz eigene IP Adresse).

![D-NAT Grafik](../assets/lti/D-NAT.svg)
