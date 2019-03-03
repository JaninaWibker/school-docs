# Statisches & Dynamisches Routing

## Statisches Routing

*Statische Routen* sind, wie der Name schon sagt, *statisch* d.h. müssen sie im Voraus geplant und angegeben werden. Um eine statische Route zu planen, braucht man die *Netzadresse des Ziel Netzes*, die da zugehörige *Subnetzmaske* und die *Nexthop* IP-Adresse.

## Alternative Routen

*Alternative Routen* sind wichtig, damit falls die geplante statische Route nicht funktioniert trotzdem die Packets an ihr Ziel gelangen. Diese Route ist aber meistens langsamer und wird deshalb auch nur dann verwendet, wenn die statische Route nicht zur Verfügung steht. Um dem Router zuzeigen, welche Route preferiert werden soll, nutzt man die sogenannte *Metric*. Die Metric ist ein Integer Wert, welcher desto kleiner er ist desto höhere Priorität indiziert.

## Default Routen

Eine *Default Route* wird dann verwendet, wenn dem Router die Ziel IP-Adresse nicht bekannt ist, z.B., wenn es sich um eine public IP-Adresse aus dem Internet handelt. Als Ziel Netzadresse wird in diesem Fall `0.0.0.0` verwendet und als Subnetzmaske ebenfalls `0.0.0.0`.

## Dynamisches Routing

Bei *dynamischen Routen* können sich die Routen während des Netzwerkbetriebes verändern. Um die bestmöglichen Routen zu finden kommunizieren die Router ständig miteinander. Hierfür werden Protokolle, wie z.B. *RIPv2* (Routing Information Protocol Version 2 (IPv4)) und *RIPng* (RIP für IPv6), *EIGRP* ( Enhanced Interior Gateway Routing Protocol), *OSPF* (Open Shortest Path First) verwendet.