# Wartezeiten in C

Es ist oft wichtig für gewisse Programmabläufe *Wartezeiten* einbauen zu können, z.B. für bestimmte Wege der *Datenübertragung*. Man kann dem Prozessor des Microcontrollers aber nicht einfach sagen, dass er für eine gewisse Zeit nichts tun soll und dann weiter den gegebenen Code ausführen soll. Man muss dem Prozessor eine gewisse Aufgabe geben, die er abarbeitet, wodurch er eine vorher berechnete Zeit lang damit beschäftigt ist.

Hierzu nimmt man gerne einfach einen *for-loop*, welcher nichts genaues macht, außer die Zählvariable hoch bzw. runter zu zählen. Die entstehende Wartezeit hierbei hängt vom jeweiligen Datentyp und vom genauen Zahlenwert ab. Es ist zu beachten, dass Compiler solchen Code gerne mal "weg optimieren" (Dead code elimination, ...), da er unnötig wirkt und keinen direkt ersichtlichen Sinn hat. 

## Implementation

Man nutzt einen for-loop, welcher eine gegebene Variable herunterzählt bis sie 0 erreicht oder bis eine Laufvariable von initial 0 sie erreicht. Letzteres wird gezeigt.

Die benötigte Zeit hängt vom verwendeten Datentyp der gegebenen Variable ab, es stehen generell `char`, `int` und `long` (sortiert nach benötigte Zeit; wenig zu viel) zur Verfügung.

```c
void wait(unsigned char n){
 unsigned char i;
 for(i=0;i<n;i++);
}
```

Die einzigen Änderungen die für einene anderen Datentyp vorgenommen werden müssen sind, **(1)** der Datentyp von `n`, und **(2)** der Datentyp von `i`.

```c
void wait(unsigned int n){
 unsigned int i;
 for(i=0;i<n;i++);
}

void wait(unsigned long n){
 unsigned long i;
 for(i=0;i<n;i++);
}
```

## Berechnung

Wir nehmen an das die Frequenz des Quarzes, der den Microcontroller taktet, $11,0592mHz$ ist und der Compiler nichts heraus optimiert.

Um heraus zu finden wieviele Zyklen wirklich pro Sekunde durchgeführt werden muss man die Quarzfrequenz durch $12$ teilen $\frac{11,0592mHz}{12}=921600Hz$. Um die Zeit pro Zyklus zu erhalten, muss man den Kehrwert hiervon berechnen $\frac{1}{921600Hz}=1,085069444\mu s$.

### Zyklen berechnen

Die verschiedenen Anzahlen an Zyklen hängt davon ab, dass intern der Microcontroller nur 8 bit unterstützt und somit der Compiler die Datentypen mit mehr als 8 bit einfach in mehreren Speicherplätzen abspeichert, wodurch aber dann mehr Instructions benötigt werden. Die Formeln resulierten daraus.

**char**: $\text{Zyklen}=12 + n\cdot 8$

**int**: $\text{Zyklen}=16 + n\cdot12 + \frac{n}{256}​$

**long**: $\text{Zyklen}=56 + n\cdot49 + \frac{n}{256} + \frac{n}{65.536} + \frac{n}{16.777.216}$

> Um nun die Zeit in s zu erhalten, muss man die Zyklen nur mit der Zeit pro Zyklus multiplizieren.

> Es handelt sich bei den Divisionen immer um Ganzzahldivisionen, also immer auf die Nachkommastellen verzichten und abrunden. 

### n berechnen

Zunächst rechnet man die Zeit in Zyklen um, also in unserem Fall $\frac{t}{1,085069444\mu s}$, und danach setzt man diese in die passende Formel ein. 

**char**: $n=\frac{\text{Zyklen}-12}{8}$

**int**: $n=\frac{\text{Zyklen}- 16}{12 + \frac{1}{256}}$

**long**: $n=\frac{\text{Zyklen}-56}{49 + \frac{1}{256} + \frac{1}{65.536} + \frac{1}{16.777.216}}$
