# Asymmetrische und Symmetrische Verschlüsselung

## Symmetrisch

Bei einem **symmetrischen** Verschlüsselungsverfahren haben alle Parteien entweder den gleichen Schlüssel oder können die/den anderen Schlüssel in annehmbarer Zeit aus dem ihnen bekannten Schlüssel erhalten.

### Vorteile

- Einfaches Schlüsselmanagement, da nur ein Schlüssel für Verschlüsselung und Entschlüsseln vorhanden sein muss. Falls es verschiedene Schlüssel für Entschlüsseln und Verschlüsseln gibt kann man aus dem einen immer einfach den anderen berechnen.
- Verfahren zum Ent- und Verschlüsseln sind oft schneller bzw. effizienter als bei asymmetrischen Verfahren. Das beruft sich darauf, dass oft Operationen wie Bit-shifts oder XOR verwendet werden.

### Nachteile

- Der eine vorhandene Schlüssel darf auf keinen Fall in unbefugte Hände gelangen, da dadurch direkt beide Seiten kompromittiert sind.
- Schlüssel müssen über einen sicheren Weg ausgetauscht und übermittelt werden (*out-of-band key exchange* oder [Diffie Hellman](#/informatik/diffie_hellman.md)).
- Anzahl der Schlüssel in Hinsicht auf die Anzahl der Teilnehmer wächst quadratisch solange nicht alle den einen gleichen Schlüssel nutzen sondern für jede mögliche Kombination an Teilnehmern ein Schlüssel vorhanden ist.
- *(Wo)*man-in-the-middle attack (auch Frauen können das machen, #equality, #lauratiltetgeradezutode, #womaninthemiddleklingtschonnachetwasgangbang)

## Asymmetrisch

Bei einem **asymmetrischen** Verschlüsselungsverfahren haben alle Parteien unterschiedliche Schlüssel. Es gibt jeweils einen Schlüssel der Verschlüsseln kann und einen anderen der Entschlüsseln kann. 

### Vorteile

- Relativ hohe Sicherheit (hängt aber immer noch davon ab wie gut die eigene Implementation ist, nur weil die Mathematik dahinter sagt das es sicher ist heißt es nicht das es irgendeinen Fehler in der Implementation gibt),
- Es werden weniger Schlüssel benötigt im Vergleich zur symmetrischer Verschlüsselung (bei der für jede Möglichkeit an Kommunikation zwischen Teilnehmern ein Schlüssel existieren muss, falls nur ein Schlüssel insgesamt verwendet wird ist dies anders). $\implies$ Weniger Aufwand benötigt um die Schlüssel alle geheim zu halten.
- Falls Private-Public-Key Verfahren benutzt werden (was sehr häufig der Fall ist) ist der Aufwand der sicheren Verteilung von Schlüsseln fast komplett weg. Keine *out-of-band key exchanges* benötigt. 
- Möglichkeit der eindeutigen Identifikation und Authentifikation durch "digitale Signaturen”.

### Nachteile

- Langsamer (Beruht auf komplexeren mathematischen Gegebenheiten / Beweisen, welche es auch Ressourcenaufwendiger machen)
- Große Schlüssellängen (Sicherheit beruht darauf, dass es nicht in annehmbarer Zeit möglich ist durch Brute-Force die Schlüssel zu erhalten, daher müssen große Schlüssel genommen werden um dies zu garantieren (Brute-Force ist die effizienteste Methode die Schlüssel zu erhalten))
- *(Wo)*man-in-the-middle attack (#equality)
- Man benötigt eine Certification Authority (**CA**) um die Integrität eines Nutzers und seines public keys zu verifizieren. Die *CA* belegt einem, dass man der wirkliche Besitzer eines public keys ist. 
