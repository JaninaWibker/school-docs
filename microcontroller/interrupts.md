# Interrupts

**Interrupts** sind Programmunterbrechungen, welche aus verschiedenen Gründen vorkommen können. Sie können durch Timer auftreten die man  konfiguriert hat, sie können durch extern angeschlossene Geräte und Komponenten auftreten (solange dies so konfiguriert ist) und vieles mehr. **Interrupts** unterbrechen den Ablauf des Hauptprogrammen und führen den Code aus der mit dem aktuellen Interrupt verbunden ist, danach wird das Hauptprogramm weiter ausgeführt ab der Stelle wo es unterbrochen wurde.



## Timer interrupts

Es gibt im *8051* (unser Microcontroller) mehrere Wege einen Timer zu benutzten. 





### Code

```asm6502
        jmp init              ; Jump zum Hauptprogramm, welches 
                              ; bis jetzt nur den Timer initialisiert

        org 00Bh              ; Timer0 wird wenn aktiviert zu Adresse `00B` springen
        jmp tinit             ; Code der bei Interrupt von Timer0 ausgeführt wird

        org 030h              ; Hauptprogramm wird bei Adresse `030` anfangen

init:   mov tmod,#00000001b   ;
        setb et0              ;
        clr tf0               ;
        setb tr0              ;
        setb ea               ;
      
tinit:  push acc              ; Es kann sein, dass im Akku wichtige Werte stehen, 			
                              ; wenn der Interrupt startet, daher Akku auf den Stack
        push psw              ; psw := Program Status Word
                              ; Enthält die aktuellen CPU Flags, muss auch auf dem Stack 
                              ; gesichert werden bevor der Interrupt diese Werte verändert
        clr tf0
        
        /* Code */
        
        pop psw               ; psw wieder zum ursprünglichen Zustand zurücksetzen
        pop acc               ; Akku wieder zum ursprünglichen Zustand zurücksetzen
        reti                  ; return; Ein Jump zurück zum Aufruf dieser Routine
        
end
```

