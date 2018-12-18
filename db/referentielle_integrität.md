# Referentielle Integrität

Die referentielle Integrität (auch **Beziehungsintegrität**) besagt, dass **Attributwerte eines Fremdschlüssels** auch als **Attributwert des Primärschlüssels** vorhanden sein müssen. Über die referentielle Integrität werden in einem *DBMS* die Beziehungen zwischen Datenobjekten kontrolliert. Das bedeutet, dass die referentielle Integrität dafür verantwortlich ist zu gewährleisten das keine korrupten Daten bzw. unvollständigen Daten in der Datenbank sind. Unvollständig heißt hierbei, dass *foreign keys* ins Leere führen, da die damit assoziierten Daten nichtmehr vorhanden sind oder eventuell auch woanders zu finden sind, also generell eine **fehlende Übereinstimmung**, bzw. **Synchronisation/Konsistenz** von Daten. Die **Integrität/Konsistenz der Daten in Bezug auf die vorhandenen Referenzen** ist dann nicht mehr gewährleistet, daher kommt auch der Name “referentielle Integrität”.

Um die **referentielle Integrität** garantieren zu können muss man überprüfen ob sie zu gewissen Zeitpunkten verletzt wird bzw. nichtmehr garantiert wird. Da die referentielle Integrität bei Änderung der Daten wie z.B. **Löschen** verletzt werden kann wird bei genau diesen Operationen gehandelt. Es gibt mehrere mögliche Wege sie zu gewährleisten, welchen man davon nimmt hängt von der **Datenbank** bzw. **ihrem Nutzen** und **ihrer Aufgabe** ab. 

## Referentielle Integrität in SQL

In **SQL** gibt es verschiedene mögliche Handlungen die ausgeführt werden können, wenn eine Operation (also entweder `UPDATE` oder `DELETE`) die referentielle Integrität beeinträchtigt:

- **`Cascade`**: bei Löschen von Datensätzen werden alle damit verknüpften Datensätze auch gelöscht, also alle Datensätze die *foreign keys* haben, welche zu den zu löschenden Datensätzen zeigen. Dies kann auch bei Veränderung der *primary keys* passieren, dabei werden dann alle *foreign keys* von damit verknüpften Datensätzen geupdated.
- **`No Action`**: Es dürfen keine Datensätze gelöscht bzw. verändert werden, wenn sie in anderen Datensätzen als *foreign keys* referiert werden. 
- **``Restrict``**: Es wird jegliche Veränderung verweigert. In MySQL ist Restrict exakt das gleiche wie No Action, in anderen Datenbanken ist dies eventuell nicht exakt so.
- **`Set Null`**: Die *foreign keys* der Datensätze, welche nach dem Löschen bzw. Verändern auf nichtmehr vorhandene Datensätze zeigen werden auf `NULL` gesetzt.
- **`Set Default`**: Ähnlich wie **Set Null**, aber mit der Abweichung, dass die *foreign keys* nicht auf `NULL` gesetzt werden, sondern auf ihren `DEFAULT`-Wert.



## Anwendung in SQL

Was genau passiert (`Cascade`, `Restrict`, `No Action`, `Set Null` oder `Set Default`) wird als **Foreign Key Constraint** definiert. Wenn nun ein `DELETE` oder `UPDATE` durchgeführt für einen Datensatz auf den dieser aktuelle Table verweist, dann wird die angegebene Operation (`ON DELETE` / `ON UPDATE`) in diesem Table für betroffene Datensätze ausgeführt. Es kann also jeder Table selber definieren was mit ihm passiert anstatt das ein anderer Table definiert was mit verknüpften Tables passiert.

```sql
CREATE TABLE <TableName> (
	...
	CONSTRAINT <ForeignKeyName>
		FOREIGN KEY (<ForeignKey>)
		REFERENCES <ForeignTable>(<ForeignTablePrimaryKey>)
		ON DELETE <CASCADE | NO ACTION | SET NULL | SET DEFAULT>
		ON UPDATE <CASCADE | NO ACTION | SET NULL | SET DEFAULT>
)
```

> https://www.techonthenet.com/sql_server/foreign_keys/foreign_delete.php