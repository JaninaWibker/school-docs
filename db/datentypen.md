# SQL Datentypen

SQL hat sehr viele verschiedene Datentypen

## Numerische Datentypen

| Datentyp  | Wertebereich              |
| :-------- | :------------------------ |
| TINYINT   | -127 bis +127             |
| SMALLINT  | -32768 bis +32767         |
| MEDIUMINT | -8388608 bis +8388607     |
| BIGINT    | -2^63 bis +2^63-1         |
| INT       | -214783648 bis +214783647 |
| FLOAT     | floating point number einfache Prezision |
| DOUBLE    | floating point number doppelte Prezision |
| DECIMAL(g, n) | floating point number mit Größe g, n |
| NUMERIC(g, n) | floating point number mit Größe g, n |

> **Attribute**:
> `AUTO_INCREMENT`: erzeugt automatisch eine eindeutige Zahl, die um 1 größer ist als die vorhergehende Zahl
>
> `ZEROFILL`: bewirkt, dass führende Nullen angezeigt werden
>
> `UNSIGNED`: die Zahl ist nicht mehr *signed* sondern *unsigned*, damit kann man keine negativen Zahlen mehr nutzen, hat aber im positiven den doppelten Wertebereich (also z.B. bei `TINYINT` dann von 0 bis 255)

## Datentypen für Zeichenketten

| Datentyp    | Wertebereich                       |
| :---------  | :--------------------------------- |
| CHAR(g)     | `g` character                      |
| NCHAR(g)    | `g/2` character (unicode)          |
| VARCHAR(g)  | variable Länge bis `g`             |
| NVARCHAR(g) | variable Länge bis `g/2` (unicode) |
| TINYBLOB    | 0 bis 255 Zeichen                  |
| BLOB        | 0 bis 65535 Zeichen                |
| MEDIUMBLOB  | 0 bis 16777215 Zeichen             |
| LONGBLOB    | 0 bis 429497295 Zeichen            |
| TINYTEXT    | 0 bis 255 Zeichen                  |
| TEXT        | 0 bis 65535 Zeichen                |
| MEDIUMTEXT  | 0 bis 16777215 Zeichen             |
| LONGTEXT    | 0 bis 429497295 Zeichen            |
| ENUM(w1, w2, ...) | Liste mit Werten, auch mit einem numerischen Wert aufrufbar |
| SET(w1, w2, ...)  | Liste mit Werten, auch mit einem numerischen Wert aufrufbar |

## Datentypen für Datum und Zeit

| Datentyp      | Wertebereich              | Format     |
| :-----------  | :------------------------ | :--------- |
| DATE          | 1000-01-01 bis 9999-12-31 | JJJJ-MM-TT |
| TIME          | -838:59:59 bis 838:59:59  | hh:mm::ss  |
| DATETIME      | 1000-01-01 0000 bis 9999-12-31 23:59:59 | JJJJ-MM-TT hh:mm:ss |
| TIMESTAMP(14) | &nbsp;        | JJJJMMTThhmmss |
| TIMESTAMP(6)  | &nbsp;        | JJMMTT         |
| TIMESTAMP(4)  | &nbsp;        | JJMM           |
| YEAR          | 1901 bis 2155 | JJJJ           |

## Allgemeine Attribute

Allgemeine Attribute können mit allen Datentypen verwendet werden:

| Attribut    | Beschreibung |
| :---------- | :------------- |
| NULL        | In diese Spalte muss nicht unbedingt ein Wert eingetragen werden, NULL ist der default für diese Spalte |
| NOT NULL    | In diese Spalte muss unbedingt ein Wert eingetragen werden |
| DEFAULT     | Ein Standardwert wird vorgegeben, falls kein anderer Wert explizit angegeben wird, wird dieser genutzt |
| PRIMARY KEY | In einer *primary key*-spalte müssen eindeutige und einmalige Werte eingetragen werden |
