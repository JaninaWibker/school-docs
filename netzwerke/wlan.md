# WLAN

WLAN steht für *Wireless Local Area Network* und ist ein lokales Funknetz. In vielen Ländern wird der Begriff *Wi-Fi* anstatt WLAN verwendet. WLAN fungiert auf den ersten beiden Schichten des OSI-Schichtenmodells.

## Betriebsarten

### Infrastruktur-Modus

Der *Infrastruktur-Modus* ähnelt einem *Mobilfunknetz*. Der *Access Point* sendet alle 100ms *"Beacons"* aus. Diese Beacons sind kleine Datenpakete, welche Informationen über das WLAN Netz enthalten. Dazu gehören:
- **SSID**: Service Set Identifier (sozusagen der Name des WLAN Netzwerkes)
- Liste unterstützer Übertragungsraten
- Art der Verschlüsselung

Da diese Beacons von allen WLAN Clients im Empfangsbereich empfangen werden können haben diese es somit sehr leicht ein Netzwerk zu wählen, mit dem sie sich verbinden wollen. Durch die kontinuirliche "bombadierung" mit Beacons kann ein Endgerät auch feststellen, wie gut die Verbindung zum Access Point potentiell ist.

Auch wenn dies gegen den Standard verstößt kann das schicken der SSID oft ausgeschaltet werden, wodurch das WLAN Netzwerk dann "versteckt" ist. Endgeräte können sich troztdem mit diesen versteckten Netzwerken verbinden, solange sie sie kennen (also ihre SSID kennen). Dies stellt aber eine potentielle Sicherheitslücke dar, da diese WLAN Netzwerke simuliert werden können und Endgeräte ihnen zunächst blind vertrauen.

WLAN agiert auf Layer 1 und 2 und nutzt die gleiche Addressierung wie Ethernet und ist somit kompatibel mit jeglicher Ethernet Infrastruktur. 

### Ad-hoc-Modus

Der *Ad-hoc-Modus* ist eine Art *dezentralisierte Version des Infrastruktur Modus*. Es gibt keine gesonderte Station, wie den Access Point beim Infrastruktur Modus, jedes Gerät ist gleichwertig. Ad-hoc ist ein weg schnell, spontan kleinere Netze aufzubauen, wird aber oft durch Bluetooth oder ähnliches ersetzt.

Wie zuvor auch müssen alle Endgeräte die gleiche SSID nutzen und sollten zudem auch die gleiche Verschlüsselung nutzen. Dadurch, dass es keinen Access Point gibt, der alles organisiert muss dies von allen Endgeräten selber passieren, daher *dezentralisiert*. Sobald die Geräte sich physikalisch etwas voneinander trennen bricht das System etwas zusammen, da nichtmehr alle Daten an alle geschickt werden können. Um dies zu mitigieren wird an *Routing-fähigen Protokollen* gearbeitet, die dafür sorgen, dass nichtmehr jedes Endgerät jedem Endgerät alles schicken muss, wodurch das Reichweitenproblem etwas verringert wird, zumindest solange jedes Endgerät mindestens ein anderes Endgerät in der Nähe hat, sodass durch Routing immernoch alle Daten an alle gehen können.

## Frequenzen

Für drahtlose Netzwerke sind bisher zwei lizenzfreie Frequenzblöcke aus den ISM-Bändern freigegeben worden.

| [MHz] | Kanäle  | Anzahl Nutzbarer<br> Kanäle | Bandbreite | Anzahl überlappungsfrei<br> nutzbare Kanäle |
| ---- | -------- | --------------------------- | ---------- | ------------ |
| **2400-2483,5** | **1-14** | 11 in USA<br>13 in Europa | *20MHz*<br> 22Mhz<br> (40MHz) | 1, 5, 9, 13 <br>1, 6, 11<br>1, 9 |
| **5150–5350<br>und<br>5470–5725** | 36–64<br>und<br>100–140 | 16 in USA<br>19 in Europa | *20MHz*<br> 40Hz<br> 80Hz<br> 160Hz | 16 bis 19 |

WLAN Frequenzen dürfen in Europa nur mit **100mW** und in den USA mit **1W** gesendet werden.

Wegen der Bandbreite können nicht alle Kanäle überlappungsfrei genutzt werden. Ein Kanal hat eine Bandbreite von **5MHz**. Bei 20MHz können daher nur 4 Kanäle **1 , 5, 9, 13** genutzt werden.

| Kanal                    | ***1*** | 2    | 3    | 4    | ***5*** | 6    | 7    |
| ------------------------ | ------- | ---- | ---- | ---- | ------- | ---- | ---- |
| Mitten<br>Frequenz [MHz] | 2412    | 2417 | 2422 | 2427 | 2432    | 2437 | 2442 |

| 8    | ***9*** | 10   | 11   | 12   | ***13*** | 14   |
| ---- | ------- | ---- | ---- | ---- | -------- | ---- |
| 2447 | 2452    | 2457 | 2462 | 2467 | 2472     | 2484 |

Kanal **14** ist nie zur Nutzung freigegeben.