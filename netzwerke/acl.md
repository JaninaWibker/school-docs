# Access Lists und extended Access Lists

*Access Lists* sind Filter, welche auf Packets angewendet werden können um zu schauen, ob diese weitergeschickt oder gedropped werden sollen. Es wird unterschieden zwischen normalen *Access Control Lists* (ACLs) und *extended Access Control Lists* (extended ACLs). Zusätzlich gibt es noch weitere Arten von Access Lists, welche sich mit AppleTalk, IPX oder ähnlichem befassen.

## ACL Numbers

Mithilfe von sogenannten *ACL Numbers* wird angegeben um was für eine Art von ACL es sich bei einer bestimmten ACL es sich handelt. Alle ACLs mit der gleichen Nummer werden zudem als Art Gruppe angesehen. Eine bestimmte Art bzw. Bedeutung wird immer einer Reichweite von ACL Numbers zugeordnet.

| ACL Number | Art |
| :------------- | :------------- |
| 1 - 99, 1300 - 1999 | standard ACL (IPv4) |
| 100 - 199, 2000 - 2699 | extended ACL (IPv4) |
| 600 - 699 | AppleTalk |
| 800 - 899 | IPX |
| 900 - 999 | extended IPX |
| 1000 - 1099 | IPX Service Advertisement Protocol |

## standard ACLs

Normale (*standard*) ACLs können anhand der **Source Adresse** von Packets diese entweder durchlassen oder droppen. Dafür werden *Wildcard Masks* verwendet, dies funktioniert ähnlich wie bei der Aufteilung einer IPv4 Adresse in **NetID** und **HostID** bei der Verwendung von Subnetzmasken. Man spezifiziert eine IPv4 Adresse und eine Maske, dann wird beim Überprüfen des Packets die Source Adresse des Packets mit der spezifizierten IPv4 Adresse mithilfe der Maske verglichen. An allen Stellen an denen die Maske ein **`0` hat müssen beide IP Adressen übereinstimmen**, an den Stellen an denen die Maske eine **`1` hat müssen die IP Adressen *nicht* übereinstimmen**

> **TL;DR**
>
> *Source Adresse* und *spezifizierte Adresse* werden miteinander verglichen mithilfe der *Maske*.
>
> Bedeutung der Stellen der Maske:
> - `0`: müssen gleich sein
> - `1`: egal

An Stelle einer Maske kann man auch bei Cisco Geräten die keywords `any` und `host` nuzten.
Dabei steht `any` für `0.0.0.0 255.255.255.255`. Wie die Bezeichnung *any* schon aussagt wird dies alle Source Adressen zulassen.
`host` steht für `0.0.0.0` in der Maske, das heißt, dass nur die eine spezifizierte IP Adresse zugelassen ist.

## extended ACLs

Extended ACLs sind ähnlich wie standard ACLs, nur mit dem Unterschied, dass sie nicht nur die Source Adresse sondern auch vieles weitere inspizieren können. Sie können die **Source Adresse**, die **Destination Adresse**, den **Source Port**, den **Destination Port**, das **Protokoll** untersuchen.
