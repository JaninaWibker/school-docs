# Normalisierung

## Anomalien

Ein Relationsschema sollte so entworfen sein, dass es keine Einfüge-, Lösch-, oder Update-Anomalien auftreten. Falls in Einzelfällen Anomalien auftreten (z.B. da sie bei weitem bessere Performance liefern) sollten diese dokumentiert sein.

### Einfüge-Anomalie

Bei einer Einfüge-Anomalie sind bei Hinzufügen von Datensätzen Informationen so verknüpft, dass bestimmte Daten mit angeben werden müssen, die eigentlich nichts mit den eigentlichen Daten zu tun haben, aber trotzdem im Relationsschema gebraucht werden / vorgegeben sind um die eigentlichen Daten hinzufügen zu können.

### Lösch-Anomalie

Bei einer Lösch-Anomalie sind, wie bei der Einfüge-Anomalie, nicht unbedingt zusammengehörende Daten zusammengelegt worden. Wenn man nun nur eine Teilmenge dieses Datensatzes löschen will geht dies nicht ohne auch die andere Teilmenge des Datensatzes zu löschen, da beide Teilmengen zu einem Datensatz zusammengefügt wurden.

### Update-Anomalie

Eine Update-Anomalie tritt auf, wenn in der Datenbank redundant gespeicherte Daten nur teilweise aktualisiert werden. Die gleichen Daten werden an mehreren Orten gespeichert und wenn man diese nun ändern will muss man dies überall vornehmen wo diese Daten auftreten, die Daten zentral an einem Punkt zu speichern anstatt mehrmals verteilt hat den Vorteil, dass man die Daten nur an einer Stelle verändern muss und nicht an jeder Stelle wo diese Daten auftreten. Eine Update-Anomalie kann auch auftreten, wenn Teilmengen zu einem Datensatz zusammengefügt wurden, da dabei dann zwar in der gleichen Tabelle, aber in mehreren Datensätzen die gleichen Informationen mehrmals vorkommen können.

## Normalformen

Es gab zunächst 3 Normalformen (1. - 3.), später kamen noch einige weitere hinzu, aber die ersten drei reichen in eigentlich fast allen Fällen aus

Im Verlauf der Normalisierung werden Relationsschemata, die bestimmte Normalformtests nicht erfüllen, zerlegt, bis die resultierenden Relationsschemata die gewünschten Normalform Eigentschaften aufweisen.

## 1. Normalform

Ein Relationsschema `R` ist in der 1. Normalform (**1NF**), wenn die Domänen der Attribute von `R` ausschließlich atomare Werte (einfache bzw. unteilbare Werte) beinhalten.

> **Das heißt**: das Relationschema darf keine nicht-atomaren Attribute oder verschachtelten Relationsschemata enthalten
>
> **Regel**: Erstelle für jedes nicht-atomare Attribut oder die verschaltelten Relationsschemata ein neues Relationsschemata

![Anwendung der 1. Normalform](../assets/lti/1NF.svg)

Ein Relationsschema in der 1NF kann prinzipiell immernoch alle Probleme (Anomalien) aufweisen:
- Unnötige Redundanz
- Einfüge-Anomalien
- Lösch-Anomalien
- Update-Anomalien

> Daher muss man nach Anwendung der 1NF auch noch weitere Normalformen anwenden

## 2. Normalform

Ein Relationsschema `R` ist in der 2. Normalform (**2NF**), wenn es in der 1NF ist und kein nicht-primes Attribut von nur einem Teil des Primärschlüssels abhängt

> **nicht-primes Attribut**: Attribut, das zu keinem Schlüsselkandidaten gehört
>
> **Das heißt**: in einem Relationsschema, dessen Primärschlüssel mehrere Attribute enthält, darf kein nicht-primes Attribut funktional von einem Teil des Primärschlüssels abhängen
>
> **Regel**: Zerlege das Relationsschema und erstelle ein neues für jeden partiellen Schlüssel mit seinem abhängigen Attributen. Erhalte das (restliche) Relationsschema mit dem ursprünglichen Primärschlüssel und Attributen, die von diesem voll funktional abhängig sind

![Anwendung der 2. Normalform](../assets/lti/2NF.svg)

Auch ein Relationsschema in der 2NF kann prinzipiell noch alle genannten Probleme aufweisen:
- Unnötige Redundanz
- Einfüge-Anomalien
- Lösch-Anomalien
- Update-Anomalien

> Daher muss man nach Anwendung der 2NF noch die 3NF anwenden, dabei fallen diese ganzen Probleme & Anomalien nun endlich weg

## 3. Normalform

Ein Relationsschema `R` ist in der 3. Normalform (**3NF**), wenn es in der 2NF ist und kein nicht-primes Attribute von `R` transitiv vom Primärschlüssel abhängt

> **Das heißt**: ein Relationsschema darf kein Nichtschlüsselattribut enthalten, das funktional von einem anderen nicht-primen Attribut (oder von einer Menge von nicht-primen Attributen) bestimmt wird
>
> **Regel**: Zerlege das Relationsschema und erstelle eine neues, welches das nicht nicht-primes Attribut bzw. die nicht-primen Attribute beinhaltet, die funktional von anderen nicht-primen Attributen bestimmt werden.

![Anwendung der 3. Normalform](../assets/lti/3NF.svg)

Ein Relationschema in der 3. Normalform weißt meistens keine der Probleme & Anomalien auf, dies kann jedoch theoretisch selten noch vorkommen. Falls solche Anomalien auftreten kann man entweder weitere Normalformen anwenden oder diese Anomalien gut dokumentieren (vermutlich bessere Lösung).

## Arten von Abhängigkeit

### Funktionale Abhängigkeit

Eine **vollständig funktionale Abhängigkeit** liegt dann vor, wenn das Nicht-Schlüsselattribut nicht nur von einem Teil der Attribute eines zusammengesetzten Schlüsselkandidaten funktional abhängig ist, sondern von allen Teilen eines Relationstyps. Die **vollständig funktionale Abhängigkeit** wird mit der *2NF* erreicht.

### Transitive Abhängigkeit

Eine **transitive Abhängigkeit** liegt dann vor, wenn `Y` von `X` und `Z` von `Y` funktional abhängig sind. Das heißt, dass dann auch `Z` von `X` funktional abhängig ist (*abhängig durch einen Zwischenschritt sozusagen*). Diese Abhängigkeit ist transitiv (*übertragend*). Die **transitive Abhängigkeit** wird mit der 3NF entfernt, da danach alle nur transitiv abhängigen Attribute in ihrem eigenen Relationsschema sind. 
