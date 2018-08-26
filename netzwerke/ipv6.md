# IPv6

IPv6 ist der Nachfolger von IPv4, IPv4 hat den Nachteil, dass der Adressraum für die heutigen Anforderungen viel zu niedrig ist. Dieses Problem will IPv6 lösen. Zudem vereinfacht IPv6 auch viele sonst vorherig unnötig komplexen Features, darunter z.B. der OSI Layer 3 IPv6 Header.

## Aufbau & Format

IPv6 Adressen bestehen aus **128 Bits**, das bedeutet, dass IPv6 im Vergleich zu IPv4 mit 32 Bit Adressen einen $2^{96}$ mal größeren Adressraum hat. Um genau zu sein gibt es **340.282.366.920.938.463.463.374.607.431.768.211.456** mögliche IPv6 Adressen.

Da die Notationsart von IPv4 Adressen bei 4 mal längeren Adressen nicht mehr einfach möglich ist, hat man sich ein neues, kürzeres Format für IPv6 Adressen ausgedacht, welches es auch in vielen Fällen zulässt die Adresse zu vereinfachen zu einer kürzeren. Man gibt die IPv6 Adresse in Blöcken von jeweils 2 Byte an, welche mit einem Doppelpunkt `:` getrennt sind, jeder Block wird mit 4 Hexadezimalstellen angegeben (jede Hexadezimalstelle stellt ein Halfbyte (Nibble) da).

Bei der Vereinfachung muss man schrittweise vorgehen:
1. Leading zeros in jedem Block entfernen, dabei muss beachtet werden, dass ein Block nicht ganz leer sein kann, man muss also minimal eine einzelne Null `0` haben
2. größte kontinuierliche Folge von 'leeren' Blöcken (`:0:`, die die man im 1. Schritt behalten musste und nicht weiter verkürzen konnte) komplett weglassen, sodass man zwei aufeinander folgende Doppelpunkte `::` einmal in der Adresse hat. Falls es zwei gleichlange kontinuierliche Folgen von leeren Blöcken gibt, dann nimmt man den ersten

Beispiel:

Ursprungsform: `2001:cdba:0000:0000:0000:0000:3257:9652`
erster Schritt: `2001:cdba:0:0:0:0:3257:9652`
zweiter Schritt: `2001:cdba::3257:9652`

## Typen von IPv6 Adressen

### LLU - Link Local Address

Link Local Addresses werden von Interface eines IPv6 Hosts generiert, sie sind nur für die Kommunikation im eigenen IP Netz für einige bestimmte Protokolle wie DHCPv6 da und werden mithilfe der MAC-Adresse generiert. Der Prefix für eine LLU ist `fe80::/10`. LLUs sind vergleichbar mit dem `169.254.0.0/16`-er Adressraum, welcher für **APIPA** (Automatic Private IP Addressing) genutzt wird. 

Aufbau: `fe80::[InterfaceID/64]`

### GUA - Global Unicast Address

Global Unicast Adressen sind globally routable, sie sind ähnlich wie globale IPv4 Adressen. GUAs beginnen mit dem Prefix `2000::/3`, dieser Prefix ist der einzige momentan gültige, da IANA bisher nur diesen freigegeben hat. Es gibt noch einige andere gültige globale Adressen, diese sind aber nicht generisch, sondern spezielle Adressen z.B. für backwards Kompatibilität mit IPv4. Eine GUA besteht aus dem **GUA Prefix**, **Global Routing Prefix**, **Subnet ID** und **Interface ID**. Der GUA Prefix und der Global Routing Prefix ergeben zusammen den *Site Prefix*. Theoretisch kann der ISP einen *Site Prefix* von 64 Bit verteilen, womit dann kein Platz mehr für die Subnet ID bleiben würde, was darin resultieren würde, dass man nur 1 Subnet haben könnte. Ursprünglich war es so gedacht, dass 16 Bit als Subnet ID benutzt werden, womit jeder 65536 Subnets haben könnte, davon wurde aber schnell abgewichen und heutzutage werden daher oft `/56`-er *Site Prefixe* vergeben, womit immernoch 256 Subnets möglich sind. Natürlich gibt es hierbei viele Ausnahemen, z.B. haben Unternehmen oft ganz andere Längen bei dem Global Routing Prefix. Zudem gibt es auch ISPs die `/64`-er *Site Prefixe* verteilen.

Aufbau: `2:[Global Routing Prefix/45]:[SubnetID/16]:[InterfaceID/64]`

### ULA - Unique Local Address

Die Unique Local Address ist vergleichbar mit der lokalen IPv4 Adresse, die man vom DHCP zugewiesen kriegt; sie ist nur im lokalen Netz gültig. ULAs sind nicht *globally routable*, sind aber (größtenteils) *globally unique*. Die ULA besteht aus einem Prefix (7 / 8 Bits), der Global ID (40 Bits), Subnet ID (16 Bits), Interface ID (64 Bits). Der Prefix ist `fc00::/7`, praktisch hat man aber eigentlich immer einen Prefix der Länge 8, da das 8. Bit die sogenannte *local flag* ist, welche (zumindest momentan) immer auf `1` stehen sollte (es gibt da einige die dies anders machen, z.B. macht Cisco dies oft anders) um zu zeigen, dass es sich um eine lokale Adresse handelt. In der Zukunft könnte es vielleicht auch möglich sein hier eine `0` zu nutzen und dann damit eine *globally routable* Adresse zu kriegen, aber dies ist momentan noch nicht möglich und muss auch nie möglich sein. Dadurch, dass das 8. Bit auf `1` steht kriegt man immer einen `fd00::/8` Prefix. Die Global IDs werden zufällig ausgewählt, was dafür da ist, mehrfach vormkommende Adressen zu vermeiden, theoretishc sind ULAs dadurch nicht *globally unique*, weil bestimmte Global IDs mehrfach auftauchen können, sowie auch Interface IDs theoretisch mehrmals auftreten können, aber in realität ist die Chance sehr sehr klein, dass dies vorkommt.

Aufbau: `fd:[GlobalID/40]:[SubnetID/16]:[InterfaceID/64]`
