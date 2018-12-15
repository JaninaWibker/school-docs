# Serielle Schnittstelle

Mithilfe der seriellen Schnittstelle (Das Kabel der seriellen Schnittstelle ähnelt einem VGA Kabel) lassen sich Daten sowohl synchron als auch asynchron an einen Computer oder ähnliches Gerät mit einem seriellen Anschluss übertragen.

### SCON

| SM0  | SM1  | SM2  | REN  | TB8  | RB8  | TI   | RI   |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| `9FH`  | `9EH`  | `9DH`  | `9CH`  | `9BH`  | `9AH`  | `99H`  | `98H`  |

| Register | Beschreibung                                                 |
| -------- | ------------------------------------------------------------ |
| SM0      | Mode auswählen                                               |
| SM1      | Mode auswählen                                               |
| SM2      | Multi-Prozessor Datenübertragung in allen Modi verschieden<br>weitere Konfigurationen |
| REN      | Erlaubt das empfangen von Daten                              |
| TB8      | 9. Daten bit in Mode 2 und 3  senden                         |
| RB8      | 9. Daten bit in Mode 2 und 3 empfangen $\vert$ Stoppbit wenn Mode 1 und SM2=0 |
| TI       | Datenübertragung beendet                                     |
| RI       | Datenempfang beendet<br>Ist `SM2` in den Betriebsarten 2 und 3 auf Eins gesetzt (`SM2=1`), so wird `RI` nicht aktiviert, wenn das empfangene 9. Bit den Wert Null hat (`RB8=0`).<br>Ist SM2 in den Betriebsart 1 auf Eins gesetzt (`SM2=1`), so wird `RI` nicht aktiviert, wenn kein gültiges Stoppbit empfangen wurde.<br>In der Betriebsart 0 sollte `SM2 = 0` sein. |

### Modes

| Mode | SM0  | SM1  | Beschreibung          | Übertragungsraten                                            |
| ---- | ---- | ---- | --------------------- | ------------------------------------------------------------ |
| 0    | 0    | 0    | 8-Bit Schieberegister | $\frac{Osz.}{12}$ $\vert$ half duplex                        |
| 1    | 0    | 1    | 8-Bit UART            | Timer1 $\vert$ full Duplex $\vert$ 10bit                     |
| 2    | 1    | 0    | 9-Bit UART            | ($\frac{Osz.}{12}$) oder $\frac{Osz.}{64}$ $\vert$ full duplex $\vert$ 11bit |
| 3    | 1    | 1    | 9-BIT UART            | Timer1 $\vert$ wie Mode 2                                    |

>  Die Übertragungsrate bei Mode 1 und 3 wird über den Timer1 geregelt.

[Modes und SCON](http://www.idc-online.com/technical_references/pdfs/electronic_engineering/Serial_Port_Control_Register_SCON_Of_8051_8031_Microcontroller.pdf)

### Berechnung der Zeit pro Übertragung

Ein ASCII-Zeichen ist immer 8-Bit lang, bei der seriellen Schnittstelle in Mode 1 muss aber immer ein Start- und Stopbit hinzugefügt werden, somit also 10-Bit pro ASCII-Zeichen.

Um die Zeit für die Übertragung einer gegebenen Anzahl von Bytes zu berechnen muss man die Anzahl der Bits durch die Bitrate teilen ($\frac{\text{Anzahl Bit}}{\text{Bit-rate}}=\small{\text{Zeit pro Übertragung}}$). Z.b., wenn man 10 ASCII-Zeichen bei einer Bit-rate von 9600bit/s übertragen will, rechnet man $\frac{10*10}{9600}=\small{10,41ms}$. Eine Übertragung der 10 ASCII-Zeichen dauert also $10,41ms$.

> Von dieser Zeit kann man immer $\frac{10}{Bit-rate}$ abziehen da sobald das letzte los gesendet wurde der Buffer schon wieder zur Verfügung steht

### Konfiguration

Die ersten vier Bit des SCON Registers dienen zur Konfiguration. Man muss sich also für einen Modus entscheiden (`SM0`, `SM1`) und zusätzlich noch ob man auch empfangen oder nur senden will (`REN`). `SM0` ist aktuell zu kompliziert und wird nicht benötigt.

Wenn man eine feste Übertragungsrate will nutzt man Mode 0 oder 2. Wenn man eine variable Bit/Baud-rate will muss man Mode 1 oder 3 nutzen und Timer1 konfigurieren.

Es ist zu empfehlen Timer1 in Mode 2 zu setzen, da dort ein auto-reload stattfindet.

Den benötigten Wert in `TH1` kann man mit einer Formel berechnen:

$$256-\frac{\frac{\text{Quartz Frequenz}}{384}}{\text{Baud}}$$

Wenn wir `PCON.7 SMOD=1` (was auch immer das zu bedeuten hat) verdoppelt sich die Baud Rate, also statt $384$ ein $192$ in der Formel.

### Verwendung in C

```C
//Senden
void ser_senden(char a){ 
  	while(TI==0){}		 // nach der laufenden Übertragung TI=1
  
	TI=0;
  	SBUF=a;				 // Schreiben nach SBUF und Start der seriellen Übertragung
}

//verwenden
char aus = 0x01;
ser_senden(aus+48);		// +48 weil bei 48 in ASCII das "0" steht
						//Zeilenumbruch
ser_senden(13);			// "\n"
ser_senden(10);			// "\r"
```