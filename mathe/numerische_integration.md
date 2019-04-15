# numerische Integration

Die *numerische Integration* ist eine Methode den (orientierten) Flächeninhalt unter einem Graphen zu berechnen, bzw. eher gesagt zu approximieren. Es gibt keinen immer funktionierenden Weg zu integrieren, daher gibt es theoretisch auch keinen "normalen" Weg zu integrieren, da aber die Integration durch Stammfunktion bilden keine Approximation ist und oft funktioniert wird sie oft als **die** Integration angesehen.

Die numerische Integration baut auf der Idee auf, dass man die Fläche unter einem Graphen mit Balken bzw. Rechtecken berechnen kann, die die Höhe des Graphen und eine gewisse Breite haben. Die Fläche des Rechtecks kann dann durch Multiplizieren und Aufsummieren errechnet werden. Desto kleiner die Breite desto genauer die Fläche.


<div>
  <img width=600 alt="numerische Integration - Linkssumme" src="../assets/mathe/numerische_integration-1.svg" />
  <img width=600 alt="numerische Integration - Rechtssumme" src="../assets/mathe/numerische_integration-2.svg" />
  <img width=600 alt="numerische Integration - Trapezmethode" src="../assets/mathe/numerische_integration-3.svg" />
</div>

Bei der Bestimmung der Rechteckhöhe gibt es verschiedene Ansätze. Man kann sagen, dass die linke Kante den Graphen berühren soll (*Linkssumme*) oder, dass die rechte ihn berühren soll (*Rechtssumme*). Anstelle davon kann man auch noch sagen, dass der Durchschnitt beider Werte die Höhe sein soll. Dies wird *Trapezmethode* / *Regel* genannt, weil man auch Anstelle eines Rechtecks ein Trapez nehmen könnte und es auf das gleiche hinaus laufen würde. Was man wählt ist einem meist frei überlassen. Desto kleiner die Breite desto unrelevanter wird die Wahl der Methode, da die Approximation insgesamt besser wird.

Man wählt meist einen Wert $n$, welcher für die Anzahl an Rechtecken steht und berechnet damit die Breite jedes einzelnen Rechtecks.

Angenommen es soll die Fläche von $f(x)$ im Intervall $[a; b]$ berechnet werden, mit $n$ Rechtecken, somit würde die Formel für die Linkssumme lauten:

$$\sum_{n}^{i=1} f(\frac{b-a}{n} \cdot i + a) \cdot \dfrac{b-a}{n}$$

bzw. für die Rechtssumme:

$$\sum_{n-1}^{i=0} f(\frac{b-a}{n} \cdot i + a) \cdot \dfrac{b-a}{n}$$

bzw. für die Trapezmethode:

$$\sum_{n}^{i=0} (f(\frac{b-a}{n} \cdot i + a) + f(\frac{b-a}{n} \cdot (i+1) + a)) \cdot \dfrac{b-a}{2n}$$

