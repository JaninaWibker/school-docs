# Projektmanagement

Der Kerngedanke des Projektmanagements ist es ein Projekt zu planen und zu organisieren. Dabei muss aber zunächst erstmal klar definiert werden, was ein Projekt überhaupt ist.

Etwas muss folgende Kriterien unterstützen um als Projekt bezeichnet werden zu können:

- Einmaligkeit der Bedingung in ihrer Gesamtheit
- Zeitliche, finanzielle und personelle Begrenzung
- Zielvorgabe
- Teamarbeit (ein Projekt kann auch in Einzelarbeit stattfinden, hierbei teilen sich die Meinungen)
- Fachübergreifender Charakter
- Projektspezifische Organisation
- Abgrenzung zu anderen Vorhaben
- Komplexität
- Aufwand

## Netzplantechnik

Ein Netzplandiagramm ist ein Weg den Ablauf eines Projektes abzubilden.

![Netzplantechnik](../assets/LTI-diagrams-Netzplan.svg)

Zur Berechnung der Werte muss man für jedes Ereignis wissen:

- Wie es heißt
- Welche ID es hat
- Welche Dauer es hat
- Wovon es abhängig ist

Aus der ID, dem Namen und der Abhängigkeit lässt sich zunächst die Struktur herleiten. Die Dauer jedes Ereignisses kann auch schon eingetragen werden. Dann muss man nurnoch **FAZ**, **FEZ**, **SAZ** und **SEZ** berechnen. **FAZ** und **FEZ** sind relativ einfach zu berechnen. Man startet zunächst beim **F**rühesten **A**nfangs **Z**eitpunkt mit $0$, addiert die Dauer darauf und hat damit den **F**rühesten **E**nd **Z**eitpunkt. Bei darauffolgenden Ereignissen startet man für den **FAZ** mit der **FEZ** des vorherigen Ereignisses. Nach Verzweigungen (also sobald es wieder zusammengeführt wird) nimmt man für den **FAZ** den größten **FEZ** der vorherigen Ereignisse, da man alles vorherige erledigt haben muss und die minimale Zeit somit durch das längste Ereignis definiert wird. 

Sobald man dies fertig hat kann man **SAZ** und **SEZ** berechnen. Falls es keine Verzweigungen gibt ist jeweils **FAZ** gleich **SAZ** und **FEZ** gleich **SEZ**. Andernfalls braucht man etwas namens den **kritischen Pfad**. Der **kritische Pfad** ist der “Pfad” durch das Diagramm, welcher keine Verzögerungen haben darf, bzw. keinen Puffer hat. Der kritische Pfad ohne Verzweigung ist einfach der gesamte Pfad, somit kann man nirgendwo mehr Zeit brauchen als durch die Dauer eingeplant, daher auch **FAZ = SAZ** und **FEZ = SEZ**.

Man fängt mit dem letzten Ereignis an und geht solange zurück, bis man bei einer Verzweigung angekommen ist, bis zu diesem Punkt kann man einfach die Werte von Oben (**FAZ**, **FEZ**) nach Unten übertragen (**SAZ**, **SEZ**). Bei der Verzweigung trägt man dann bei jedem Ereignis der Verzweigung als **SEZ** den **SAZ** des nachfolgenden Ereignisses ein. Bei jedem Ereignis zieht man nun die Dauer vom **SEZ** ab und erhält somit den **SAZ** des Ereignisses. Der Puffer ist nun die Differenz zwischen **FAZ** und **SAZ**. Da das Ereignis mit der längsten Dauer auch den frühesten Anfangszeitpunkt des darauffolgenden Elementes außerhalb der Verzweigung bestimmt hat dieses auch immer einen Puffer von $0$. Der **kritische Pfad** geht durch dieses Ereignis mit der längsten Dauer bis zum Anfang (man verbindet alle Ereignisse mit Puffer von $0$, also die mit der längsten Dauer relativ zu der Verzweigung des Ereignisses falls eine Verzweigung vorhanden ist). Sobald man vor der Verzweigung angekommen ist geht man wieder vor wie zuvor auch, man überträgt einfach die Werte für **FAZ** und **FEZ** in **SAZ** und **SEZ**.