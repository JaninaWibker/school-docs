# 7 Segment Anzeige

7 Segment Anzeigen sind kleine Anzeigen, die wie der Name schon verrät aus 7 Segmenten bestehen die individuell entweder eingeschaltet oder ausgeschaltet sein können. Zusätzlich gibt es bei vielen dieser 7 Segment Anzeigen auch noch ein weiteres “Segment”, welches ein optionaler Dezimalpunkt ist. Diese 7 Segmente formen eine 8 und können damit jede Ziffer anzeigen.

## Ansteuerung

Die Anzeigen selber haben meist einfach 7 oder 8 Inputs für die einzelnen Segmente (inkl. Dezimalpunkt falls 8). Sie werden aber meist hinter einem **BCD Decoder** verwendet. Ein **BCD Decoder** wandelt *BCD Werte* ([BCD](/microcontroller/bcd)) in Outputs für die 7 Segment Anzeige um. Hierbei geht er einfach mithilfe eines sozusagen “lookup tables” vor welcher aus simplen *and-gates* besteht. Ein bestimmter Input verursacht durch die *and-gates* einen bestimmten einzigartigen Output. 

![7 Segment Anzeige adressierung](../../assets/lti/7Segment-1.svg)

Hiermit ist geklärt wie man eine 7 Segment Anzeige anspricht, nur was ist mit mehreren?
Hierfür nutzt man aus, dass das menschliche Auge (bzw. eigentlich das Gehirn) vieles was sehr schnell passiert nicht richtig wahrnimmt oder nicht so schnell verarbeiten kann.
Man adressiert die Anzeigen einfach alle hintereinander und dies so schnell, dass es nichtmehr auffällt, dass eigentlich nur eine Anzeige aktuell an ist. Damit kann man erreichen, dass es so aussieht als wären alle Anzeigen gleichzeitig an, obwohl nur eine angesteuert wird. 

Nun zur wirklichen praktischen Ansteuerung. 

> Als Beispiel werden jetzt 8 oder weniger Anzeigen genutzt, sodass die adressierung mit 3 Bits noch funktioniert. 

![7 Segment Anzeige adressierung](../../assets/lti/7Segment-2.svg)

Wie man sieht gibt es insgesamt 8 Inputs, davon sind 3 für die Adressierung, einer für den Dezimalpunkt (DP) und die letzten 3 für den BCD Wert. Um nun an allen 7 Segment Anzeigen etwas anzuzeigen geht man alle möglichen Adressen (bzw. benutzten Adressen) durch und setzt die passenden BCD Werte für die Ziffern die man anzeigen will, zusätzlich guckt man noch, wann und ob man einen Dezimalpunkt braucht oder nicht.

> Es kommt oft vor, dass der Dezimalpunkt invertiert ist und somit an ist, wenn er 0V erhält, also muss man ihn eventuell noch invertieren.

## Code

Mit folgendem Code könnte man 7 Segment Anzeigen ansteuern, hierbei sind in `r1` und `r2` jeweils 2 BCD Werte (upper & lower nibble). `P1` ist der Output **P**ort indem die 7 Segment Anzeigen angeschlossen sind (sowie der Adress Decoder und der BCD Decoder).

```asm6502

output: mov a,r1          ; `r1` hat den gewollten BCD Wert im upper nibble
        anl a,#0Fh        ; upper nibble extrahieren mithilfe von *and* (`anl`)
        orl a,#000 0 0000b; Adresse 000 und DP aus
        mov p1,a          ; `a` an die 7 Segment Anzeigen ausgeben
        call wait         ; Nach jedem mal "schreiben" zu den 7 Segment Anzeigen einmal warten
        
        mov a,r1          ; `r1`hat den gewollten BCD Wert im lower nibble
        anl a,#F0h        ; lower nibble extrahieren
        swap a            ; swap zu upper nibble, da die Werte im upper nibble erwartet werden
        orl a,#001 0 0000b; Adresse 001 und DP aus
        mov p1,a
        call wait
        
        ; Nun das exakt gleiche nochmal mit `r2` und Adressen 010 und 011
        mov a,r2
        anl a,#0Fh        ; upper nibble
        orl a,#010 0 0000b; Adresse 010 und DP aus
        mov p1,a
        call wait
        
        mov a,r2
        anl a,#F0h        ; lower nibble
        swap a            ; swap zu upper nibble, da die Werte im upper nibble erwartet werden
        orl a,#011 0 0000b; Adresse 011 und DP aus
        mov p1,a
        call wait

wait:   mov r0,#0ffh      ; 256 Durchläufe
wait_0: DJNZ r0,wait_0    ; Decrement Jump Not Zero
        ret               ; Jump zum Code nach dem `call wait`
```



