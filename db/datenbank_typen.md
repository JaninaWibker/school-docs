# Datenbank Typen

Es gibt mehrere Arten von Datenbanken, dabei ordnet man aber fast alle unter 2 Kategorien ein. Einmal *relationale Datenbanken* und *nicht-relationale Datenbanken*. Zu den relationalen Datenbanken zählt man in den meisten Fällen ausschließlich SQL basierte Datenbanken. Unter nicht-relationalen Datenbanken versteht man mehrere Arten von Datenbanken wie z.B. *key-value stores*, *document stores* und *graph databases*.

![](../assets/LTI-diagrams-types-of-databases.svg)

## Relationale Datenbanken

Relationale Datenbanken sind die vermutlich meist verbreitetsten Datenbanken. Relationale Datenbanken (oder auch **RDBMS**) bestehen aus Tabellen und Datensätzen in diesen Tabellen. Es kann Verbindungen zwischen diesen Tabellen geben, daher auch der name *'relational'*. Jede Tabelle spezifiziert die Attribute, welche jeder Datensatz in dieser Tabelle enthalten muss. Jeder Datensatz muss in dieser Tabelle einzigartig sein. Dies wird durch den *primary key* durchgesetzt. Der oder die *primary key(s)* eines Datensatzes sind dafür da ihn von anderen Datensätzen in der selben Tabelle unterscheiden zu können. *Primary keys* werden auch zum *verändern*, *löschen* und auch teilweise für das *auslesen* von Datensätzen benutzt.

Beispiele für relationale Datenbanken:
- Oracle
- MySQL,
- Microsoft SQL Server
- PostgreSQL
- MariaDB
- DB2

Vorteile von relationalen Datenbanken:
- sehr ausgereifte Technologie
- unterstützt von großen Unternehmen
- SQL Standards gut definiert und implementiert
- viele Developer mit SQL Kenntnissen
- ACID-compliant: *Atomicity*, *Consistency*, *Isolation*, *Durability*

Nachteile von relationalen Datenbanken:
- brauchen absolut strukturierte Daten, unstrukturierte Daten können nicht benutzt werden dank der Schema und Type Beschränkungen
- komplexe / komplizierte Datenbanken sind schwer zu verwalten durch RDBMS Schema

## Nicht-relationale / NoSQL Datenbanken
Während relationale Datenbanken ganz genau definieren welche Struktur Daten haben müssen sind nicht-relationale Datenbanken dabei flexibler und erlauben auch die Benutzung von semi-strukturierten Daten einfacher. Es gibt viele verschiedene Typen von nicht-relationalen Datenbanken.

*Key-value stores* haben jeweils immer nur einen *key* und einen dazu gehörigen Wert (*value*). Mit dem *key* kann auf den Wert zugegriffen werden, dieser verändert und gelöscht werden. Eine solche simple Datenbank ist vorallem in embedded systems wichtig, wo es häufig zwar ein sehr sehr einfaches Datenbank Modell gibt, es aber sehr auf Geschwindigkeit und Resourcennutzung ankommt.

*Document stores* sind ähnlich wie *key-value stores* in der Hinsicht, das es auch jeweils einen *key* gibt, welcher jeden Wert identifiziert. Dieser Wert kann aber im Gegensatz zu simplen *key-value stores* mehr sein als nur *ein* Wert, dieser z.B ein weiterer *key-value store* sein oder ähnliches. Dabei ist zu beachten, das kein genaues Schema vorgegeben ist wie bei relationalen Datenbanken. *Document stores* sind also eine Mischung aus relationalen Datenbanken und *key-value stores*.

*Graph databases* stellen Daten als Netzwerk von *Nodes* da. Diese Nodes werden durch Relationen und zugehörige Labels gruppiert und verbunden. Dadurch lassen sich sonst sehr schwer zu implementierende Strukturen einfach darstellen und benutzen.


Beispiele für nicht-relationale Datenbanken
- key-value stores
  - Redis
  - Amazon DynamoDB
  - super viele simple Datenbank Implementation in allen möglichen Systemen sind einfache key-value stores:
    - localStorage
    - embedded systems
- document stores
  - MongoDB
  - Couchbase
- graph databases
  - Neo4J
  - Datastax Enterprise Graph

Vorteile von nicht-relationalen Datenbanken:
- Schema-freie Datenmodelle sind flexibel und leichter zu administrieren
- leichte Skalierung durch leichtere Verteilung auf mehrere Nodes

Nachteile von nicht-relationalen Datenbanken:
- nicht so ausgereift wie relationale Datenbanken
- jede Datenbank nutzt andere Formate und Einschränkungen, es gibt keine richtigen Standards
