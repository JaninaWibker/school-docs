# Bedingte Wahrscheinlichkeiten

Wahrscheinlichkeiten sind bedingt, wenn sie sich auf Grund einer vorhergehenden Bedingung bzw. eines vorhergehenden Ereignis verändern. Der Grund dafür ist meist eine logische Verbindung zwischen den beiden Ereignissen.

## Satz von Bayes

Der *Satz von Bayes* ist einer der wichtigsten Sätze der Wahrscheinlichkeitsrechnung und kann dafür verwendet werden, um jegliche Wahrscheinlichkeiten, insbesondere bedingte, zu berechnen.

$$P_B{A} = \dfrac{P(A \cap B)}{P(B)} = \dfrac{P_A(B) \cdot P(A)}{P(B)}$$

## Baumdiagramm

Ein *Baumdiagramm*, ist eine Art eine bedingte Wahrscheinlichkeiten darzustellen. Die Wahrscheinlichkeiten werden mithilfe der [Pfadregeln](/mathe/pfadregeln) berechnet.

![Baumdiagramm](../assets/mathe/baumdiagramm.svg)

Die eine Richtung der bedingten Wahrscheinlichkeiten kann man nun einfach ablesen, für die andere gibt es aber noch keine einfache Lösung.

## Umgedrehtes Baumdiagramm

Das *umgedrehte Baumdiagramm*, wird zusätzlich zu einem normalen Baumdiagramm benötigt, um auch die umgekehrten bedingten Wahrscheinlichkeiten zu berechnen. Angenommen man hat $P(A)$ und $P_A(B)$, und möchte nun $P_B(A)$ haben, dies lässt sich dann im umgedrehten Baumdiagramm ablesen.

![umgedrehtes Baumdiagramm](../assets/mathe/umgedrehtes_baumdiagramm.svg)

Nun kann man auch die umgekehrten bedingten Wahrscheinlichkeiten einfach ablesen.

## Vierfeldertafel

Mit der *Vierfeldertafel* ist es möglich alle Wahrscheinlichkeiten zu berechnen. Wenn man die Vierfeldertafel ausfüllt, kann man sich immer an dieser Vierfeldertafel orientieren und fehlende Wahrscheinlichkeiten berechnen, da die Felder am Rand alle durch einfache Summierungen zustande kommen. Zum Beispiel $P(A \cap B)+P(A \cap \overline{B})=P(A)$.

Mit der ausgefüllten Vierfeldertafel kann man nun mithilfe des Satzes von Bayes alle bedingten Wahrscheinlichkeiten berechnen. 

![Vierfeldertafel](../assets/mathe/vierfeldertafel.svg)

$$P_B(A)=\dfrac{P(A \cap B)}{P(B)}=\dfrac{\text{Mitte}}{\text{Rand}}$$
