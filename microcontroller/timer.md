# Timer

Ein 16-Bit Timer nutzt zwei 8-Bit Register . Wenn die unteren/zweiten 8-Bit einen Überlauf produzieren, werden die oberen/ersten 8-Bit um 1 inkrementiert. Wenn die oberen 8-Bit einen Überlauf produzieren wird ein Interrupt ausgelöst.

## Initialisieren

Es können zwei Timer gleichzeitig durch das Register **TMOD** Initialisiert werden.

```
        Timer 1       |        Timer 0 
 Gate | C/T | M1 | M0 | Gate | C/T | M1 | M0 |
```

Das **Gate**-Bit legt fest ob sich die Zähl-Frequenz kontinuierlich wiederholt oder ob diese durch den INT0/1 Pin gesteuert wird. *Bei gesetztem Bit ist er kontinuierlich?*

Das $\bold{C/\overline{T}}$-Bit (in der Auflistung oben ohne overline dargestellt) entscheidet ob es sich um einen **C**ounter oder **T**imer handelt. Ist es gesetzt handelt es sich um einen Counter der mit der Quartzfrequenz betrieben wird, wenn nicht wird die Timer Frequenz genutzt, also $\frac{\text{Quartzfrequenz}}{12}$.

```
C/T === 1 
  ? Counter ( Quartzfrequenz) 
  : Timer (Quartzfrequenz/12)
```

**M1** und **M0** legen fest um was für einen Timer es sich handelt.

| M1   | M0  | M  | Funktion                                                     |
| ---- | ---- | ----- | ------------------------------------------------------------ |
| 0    | 0    | 0   | 5-Bit-Verteiler (low-Byte) und nachgeschalteter 8-Bit-Zähler |
| 0    | 1    | 1   | Low- und High-Byte zu einem 16-Bit-Zähler zusammengeschaltet |
| 1    | 0    | 2   | 8-Bit selbstnachladender Timer/Zähler. Low-Byte = Zähler High-Byte = Nachladet bei Überlauf |
| 1    | 1    | 3   | Timer 0 bildet 2 unabhängige 8-bit-Timer<br>Timer 1 kann in den Modi 0 bis 3 als Überlaufzähler genutzt werden. |

Wenn man jetzt also zwei 16-bit Timer (`M0 = 1`) initialisieren möchte, muss man `0001 0001` in TMOD schreiben.

```assembly
MOV TMOD, #0001 0001b
```

Das High- und Low-Byte der beiden Timer lässt sich jederzeit beschreiben und auslesen.

| Bezeichnung       | Register |
| ----------------- | -------- |
| Timer 0 Low-Byte  | TL0      |
| Timer 0 High-Byte | TH0      |
| Timer 1 Low-Byte  | TL1      |
| Timer 1 High-Byte | TH1      |

Wenn man also einen Startwert im High-Byte von Timer 0 haben möchte, kann man ihn dorthin schreiben.

```assembly
MOV TH0 #220d
```

Es existiert ein weiteres Konfigurationsregister: das **TCON** Register

```
   Timer1  |  Timer0  |   Interruptkontrolle  |
 TF1 | TR1 | TF0 |TR0 | IE1 | IT1 | IE0 | IT0 |
```

| Bezeichnung | Funktion                                             |
| ----------- | ---------------------------------------------------- |
| TF0/1       | Kennzeichnet den Überlauf des Zählers                |
| TR0/1       | Startet bei 1 bzw. stoppt bei 0 den Zähler           |
| IE0/1       | **E**xternal **I**nterrupt Flag                      |
| IT0/1       | External **I**nterrupt  **t**rigger on edge oder low |

### Interrupt

Zu TCON:

| Bezeichnung | Funktion                                              |
| ----------- | ----------------------------------------------------- |
| ET0/1       | Freigabe des Timerinterrupt (**E**nable **T**imer)    |
| EX0/1       | Freigabe external Interrupt (**E**nable **E**xternal) |
| EA          | Allgemeine Interruptfreigabe (**E**nable **A**ll)     |

Interrupt Speicheradressen:

| Interrupt  | Speicheradresse |
| ---------- | --------------- |
| Reset      | `0x0000`        |
| Timer0     | `0x000B`        |
| Timer1     | `0x001B`        |
| INT0       | `0x0003`        |
| INT1       | `0x0013`        |
| Serial com | `0x0023`        |

## Start berechnen

Zuerst muss man die Zyklenfrequenz berechnen mit der der Timer um 1 inkrementiert wird. Dies tut man indem man die Quartzfrequenz durch **12** teilt. "Andernfalls erfolgt die Ansteuerung des Zählers über die durch **12** geteilte Oszillatorfrequenz"(PDF s. 35)

Also $\frac{11,0592mHz}{12}=0,9216mHz=921600Hz​$ eine Inkrementierung des Timers dauert also **921600Hz**

Nehme wir nun an das wir den Timer alle 10ms($100Hz$) einen Interrupt triggern lassen wollen müssen wir $\frac{921.600Hz}{100Hz}=9216$ rechen. Wir brauche also **9216** inkrementierungen zwischen den Interupts.

Wir müssen also einen 16-Bit(**65 536**) Timer nehmen da ein 8-bit(**256**) zu klein wäre.(M = 1)

Als letztes berechnet man den Startwert der oberen 8-bit(`TH0/1`), damit nach **9216** Inkrementierungen ein Überlauf stattfindet. Hierzu rechnet man $65.536-9216=56.320$, da die oberen 8-Bit(TH0/1) nur inkrementiert werden, wenn ein Überlauf in den unteren 8-Bit(TL0/1) statt findet. Man muss $\frac{56.320}{256}=220$ rechnen und die oberen 8-bit(`TH0/1`) somit am Start auf **220** setzen.

## Excel Tabelle

| Spaltenname  | Bedeutung                                                   |
| ------------ | ----------------------------------------------------------- |
| Teiler(TH0)  | Startwert in TH0(siehe oben)                                |
| Fmod[N] (Hz) | Benötigte Hz bis Timer abläuft bei M = N (siehe oben)       |
| Tmod[N] (s)  | Benötigte Sekunden bis Timer abläuft bei M = N (siehe oben) |

> [Link zur Excel Tabelle](https://cdn.jannik.ml/Microcontroller-Timer-Frequenzen.xls)

## Interrupt in C

Der Header der Methode, die bei einem Timerinterrupt aufgerufen wird sieht beispielsweise folgendermaßen aus:

```C
ISR_Timer0() interrupt 1 {}		// Wird bei Timerinterrupt0 aufgerufen
```

`ISR_Timer0` ist nur ein Name und ist frei wählbar. `interrupt 1` hingegen ist nicht frei wählbar sondern gibt an auf welchen Interrupt die Methode reagieren soll.

Mit dieser Tabelle kann man sich die richtige ID heraussuchen für den gewollten Interrupt.

| ID   | Interrupt  |
| ---- | ---------- |
| 0    | External 0 |
| 1    | Timer 0    |
| 2    | External 1 |
| 3    | Timer 1    |
| 4    | Serial     |

