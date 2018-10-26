## BCD

**BCD** steht für **B**inary **C**oded **D**ecimal. Es ist ein Weg eine Dezimalzahl in Binär darzustellen, dies geht natürlich auch so mit normalem Binär, ist aber teilweise relativ nervig für einige Fälle, das Anzeigen auf einer 7 Segment Anzeige ist genau so ein Fall. Man will für eine 7 Segment Anzeige am besten jede Dezimalziffer einzeln irgendwo abgespeichert haben damit man diese leicht anzeigen kann.

Um dies zu erreichen nutzt man einfach 4 Bits (1 Hexadezimalstelle) und verwendet nur die ersten 10 möglichen Werte für diese, damit fallen die Hexadezimalrepräsentationen **A** - **F** weg. **Man hat also nun die Ziffern von 0-9**. 

Man muss irgendwie zu dieser BCD Darstellung kommen und dafür gibt es mehrere Wege. Welcher davon am nützlichsten ist, ist wie immer Situationsabhängig. Falls man einen immer weiter hochzählenden Wert hat ist eine andere Lösung von Vorteil als wenn man einfach einen beliebigen Wert zu BCD Werten konvertieren muss.