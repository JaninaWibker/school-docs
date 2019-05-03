# IPv4

*IPv4* steht für *Internet Protocol Version 4*. Dieses Protokoll ist essenziell für die Kommunikation übers Internet. Die IPv4-Adresse wird für die Adressierung von Endgeräten im Internet verwendet. Sie besteht aus **4 Byte** (32 Bit). Die einzelnen Bytes werden mit Punkten getrennt und in Dezimal, also Zahlen von 0 bis 255, dargestellt.

## Internet Protokoll

Bei der Entwicklung des *Internet Protokolls* wurde darauf geachtet, dass es möglichst klein und simpel bleibt. Das hat zufolge, dass IP nur Funktionen enthält, die benötigt werden um Daten voneinem Sender zu einem Empfänger zu transportieren.

### IPv4 Header

Damit Daten über ein Netzwerk mithilfe des *Network layers* (Layer 3) gesendet werden können, müssen diese erst mit dem IPv4 Header *encapsulated* werden. Der Header wird an die Daten angeheftet und stellt alle Informationen, die zum senden des Packets benötigt werden zur Verfügung.

![IPv4 Header](../assets/lti/ipv4header.svg)

Die wichtigsten Felder (und deren Funktion) sind:
- **Version**: die Version des Internet Protokolls (`0x0100` für IPv4).
- **Time-To-Live**: Lebenszeit des Packets. Die Lebenszeit eines Packets wird in *hops* angegeben. Ein *hop* ist das durchqueren eines Routers, bei jeder Durchquerung dekrementiert der Router die Lebenszeit bzw. maximale hop-Anzahl um 1. Sobald die Lebenszeit 0 ist wird das Packet *gedropped*. Dies dient dazu, dass Packets nicht endlos lange im Kreis laufen können und für unnötige Auslastung sorgen.
- **Protocol**: das darüberliegende Protokoll (z.B. *TCP* oder *UDP*).
- **Source IPv4 Address**: die IPv4 Adresse des Senders. Sie muss eine *Unicast* Adresse sein.
- **Destination IPv4 Adress**: Die IPv4 Adresse des Empängers. Sie kann eine *Unicast*, *Multicast* oder *Broadcast* Adresse sein.

### Charakteristiken

Das Internet Protokoll hat drei Hauptcharakteristiken: *Connectionless*, *Best Effort* und *Media Independent*. 

#### Connectionless

Es wird vor dem senden der Packets *keine direkte Verbindung* mit dem Empfänger aufgebaut. Das hat zufolge, dass der *Sender* nicht weiß, ob der Empfänger überhaupt existiert, ob das Packet angekommen ist und ob der Empfänger das Packet lesen bzw. verstehen kann. Außerdem weiß der *Empfänger* nicht ob und wann ein Packet ankommen könnte.

#### Best Effort

Das Ankommen der Packets am Empfänger ist nicht garantiert. Das IP ist nicht für die Fehlerkorrektur oder Wiederbeschaffung der Packets verantwortlich.

#### Media Independent

Es fungiert Medium unabhängig. Das Medium über das die Packets übertragen werden ist irrelevant; z.B. kann ein Packet zunächst drahtlos über WLAN zum Router geschickt werden, dann über Kupferleitungen zum ISP und dann über LWL zum nächsten Verteiler.

## IPv4 Adresse

Eine *IPv4-Adresse*, oft auch nur IP-Adresse, besteht aus zwei Bestandteilen; der *NetID* und der *HostID*. Die Stelle, an der die Adresse aufgeteilt wird, wird durch die *Subnetzmaske* festgelegt.

### Subnetzmaske

Die Subnetzmaske kann entweder als Suffix angegeben werden, oder im gleichen Format wie die IP-Adresse dargestellt werden. Bei der Suffix Variante wird der IP-Adresse ein `/` angefügt, gefolgt von der Anzahl der gesetzten Bits in der Subnetzmaske. Bei der zweiten Variante werden die Bytes der Subnetzmaske wie bei der IP-Adresse in Dezimal übersetzt und mit Punkten getrennt. Um die NetID einer IP-Adresse zu erhalten, muss man auf sie und die dazugehörige Subnetzmaske das *Bitweise UND* anwenden.

### IP-Adress Klassen

Mit IPv4 können $2^{32}$ also $4.294.967.296$ Adressen realisiert werden. Da dies weitaus zu wenig wären, um jedes Endgerät mit einer IP Adresse auszustatten gibt es *private IP Adressen*. Es hat nichtmehr jedes Endgeräte eine eigene globale IP Adresse, sondern teilt sich eine (oder mehrere) mit dem gesamten lokalen Netzwerk. Auch dies reicht nichtmehr aus und deshalb gibt es inzwischen [IPv6](/netzwerke/ipv6). Die erste IP Adresse eines IP-Netzes wird als *network address* oder Netzaddresse bezeichnet udn repräsentiert das gesamte Netzwerk. Die letzte Adresse eines IP-Netzes wird als *Broadcast Adresse* bezeichnet und dient somit dafür, alle Endgeräte im Netzwerk anzusprechen.

Es gibt **5** Klassen von IP-Adressen **`A`** bis **`E`**:

| Klasse | Leading bits | Subnetzmaske | NetID | HostID | Erste Adresse / network address | Letzte Adresse / broadcast address |
| ------ | ------------ | ------------ | ----- | ------ | ------------------------------- | ---------------------------------- |
| A | `0`    | `/8`  | $2^7-2$    | $2^{24}-2$ | `0.0.0.0`   | `127.255.255.255` |
| B | `10`   | `/16` | $2^{14}-2$ | $2^{16}-2$ | `128.0.0.0` | `191.255.255.255` |
| C | `110`  | `/24` | $2^{21}-2$ | $2^8-2$    | `192.0.0.0` | `223.255.255.255` |
| D | `1110` | /     | /          | /          | `224.0.0.0` | `239.255.255.255` |
| E | `1111` | /     | /          | /          | `240.0.0.0` | `255.255.255.255` |

`D` wird für *Multicast* verwendet und `E` für experimentelle Zwecke. Multicast Adressen zeigen nicht nur auf einen Empfänger, sondern auf eine Gruppe von Empfängern.

In den Netzen **A** bis **C** gibt es jeweils spezielle reservierte Bereiche für die Nutzung als Private IP-Adressen.

| Klasse | Subnetzmaske  | Adress Reichweite               |
| ------ | ------------- | ------------------------------- |
| A      | `255.0.0.0`   | `10.0.0.0 - 10.255.255.255`     |
| B      | `255.240.0.0` | `172.16.0.0 - 172.31.255.255`   |
| C      | `255.255.0.0` | `192.168.0.0 - 192.168.255.255` |

### Reservierte Adressen

Außer den Privaten gibt es noch weitere Reservierte IP-Adressen.

- `127.0.0.1 - 127.255.255.255`: Localhost loopback
- `169.254.1.0 - 169.254.254.255`: Fallback Adressen wenn der DHCP nicht erreichbar ist (APIPA (Automatic Private IP Addressing))
- `[erste Adresse]`: Network address
- `[letzte Adresse]`: Broadcast address
- `0.0.0.0 und 255.255.255.255`: Alias Adressen für eigenes privates Netz

### VLSM

VLSM steht für *Variable Length Subnet Masking* und wird verwendet um ein privates IP-Netz in mehrere Subnetze aufzuteilen. Hierfür muss man sich zunächst überlegen, wieviele Subnetze mit wievielen Adressen benötigt werden, daraufhin wird die default Subnetzmaske dann den Anforderungen nach angepasst.

**Beispiel**:

IP-Netz: `192.168.0.0/22`

3 Subnetze

1. mit 500 Adressen
2. mit 240 Adressen
3. mit 120 Adressen

Für jedes Bit, das man zur Subnetzmaske hinzufügt, halbiert sich der HostID Pool. Bei `/24` wären es also **253** Adressen. Beim ersten Subnetz sind es **500** Adressen, also eine Subnetzmaske von `/23`, beim Zweiten sind es 240 Adressen also `/24`, und beim letzten sind es 120 Adressen also `/25`.
Nun berechnet man die Adressbereiche. Man sucht sich die Bits heraus, die nicht zur NetID gehören, setzt diese alle auf **`0`** und erhält mit den NetID bits damit dann die Netzadresse. Für die Broadcast Adresse muss man dies mit einer **`1`** anstatt einer 0 tun. Die NetID kann man mithilfe der ursprünglichen Subnetzmaske bestimmen. Gegeben war die Maske `/22`. Man kann also NetIDs im Bereich `192.168.0 - 3.x` verteilen.

1. `192.168.0.0/23 - 192.168.1.255/23 `
2. `192.168.2.0/24 - 192.168.2.255/24`
3. `192.168.3.0/25 - 192.168.3.127/25`
