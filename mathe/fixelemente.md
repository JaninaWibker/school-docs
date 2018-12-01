# Fixelemente

Es gibt 3 verschiedene Arten von Fixelementen, **Fixpunkte**, **Fixgeraden** und **Fixpunktgeraden**.

## Fixpunkte

Ein Fixpunkt ist ein Punkt, welcher auf sich selbst abgebildet wird. Das bedeutet, dass nach multiplikation mit der Abbildungsmatrix der Punkt selber das Ergebnis ist. Die Aufgabe ist es für eine gegebene Abbildungsmatrix $A$ die Fixpunkte zu finden.

Der Punkt $(0|0)$ (Ursprung) ist bei translationsfreien affinen Abbildungen **immer** ein Fixpunkt, da alle affinen Abbildungen ohne Translation immer um den Ursprung passieren.

> Ein einfacher Beweis dafür ist, dass die $0$ das sogenannte Null Element oder auch absorbierendes Element der Multiplikation in den Reelen Zahlen ist, womit nichts anderes als $0$ herauskommen kann, was dem Ursprung entspricht

Die Allgemeine Formel für einen Fixpunkt ist:

$$A \cdot \begin{pmatrix}x\\\\y\end{pmatrix} = \begin{pmatrix}x'\\\\y'\end{pmatrix} = \begin{pmatrix}x\\\\y\end{pmatrix}$$

## Fixgeraden

Eine Fixgerade ist ähnlich wie ein Fixpunkt, mit der Abänderung, dass es sich um eine Gerade und nicht um einen Punkt handelt. Man kann sich die Fixgerade als unendlich viele Punkte auf der Geraden vorstellen, nach der Transformation sollten alle diese unendlich vielen Punkte immernoch auf der ursprünglichen Geraden liegen, sie müssen aber nicht auf der gleichen Position liegen wie zuvor. Bei dieser Merkhilfe muss man aber auch unbedingt beachten, dass eine Gerade eine unendliche Länge hat.

Zu beachten ist auch, dass 2 Geraden die gleichen sind, wenn sie in der gleichen Darstellungsform (z.B. lineare Funktion) durch die gleichen Angaben beschrieben werden (man muss eventuell die Geraden zur gleichen Darstellungsform bringen). Solange die Gerade vor der Transformation die gleiche Gerade ist wie nach der Transformation handelt es sich um eine Fixgerade.

## Fixpunktgeraden

Fixpunktgeraden beschreiben mithilfe einer Geraden wo Fixpunkte vorhanden sind. Jeder mögliche Punkt auf einer Fixpunktgeraden muss ein Fixpunkt sein. Es kann mehrere Fixpunktgeraden geben, wobei hinterher aber nicht unbedingt alle Fixpunkte einer zugeordnet sein müssen, es kann auch Fixpunkte geben die keinem geradlinigen Muster folgen, z.B. ist dies oft der Fall mit dem Ursprung ($(0|0)$). Es muss nicht unbedingt eine Fixpunktgerade geben, wenn es einen oder mehrere Fixpunkte gibt, das bedeutet nur, dass diese Fixpunkte nicht einem geradlinigem Muster folgen.



## Berechnung

Meistens hat man eine gewisse Abbildungsmatrix $M$ gegeben und muss aus ihr bestimmen, welche Fixpunkte existieren und ob diese ein Muster in Form einer Fixpunktgerade verfolgen. 

Zunächst stellt man aus der Abbildungsmatrix $A$ die 2 einzelnen Gleichungen für $x’$ und $y’$ auf.

$x' = a \cdot x + b \cdot y$

$y' = c \cdot x + d \cdot y$

Nun muss man aus diesen beiden Gleichungen $x$ und $y$ Werte finden wofür gilt, dass $x’ = x$ und $y’ = y$ ist. Also stellt man folgendes Gleichungssystem auf

$x = a \cdot x + b \cdot y$

$y = c \cdot x + d \cdot y$

Dieses Gleichungssystem löst man, erhält dann Werte bzw. Gleichungen für die beiden Komponenten des Punktes. Für translationsfreie Abbildungen sollte immer der Ursprung herauskommen, entweder als einzige Lösung oder enthalten in der Gleichung die man errechnet hat.

Damit hat man den Fixpunkt bzw. die Fixpunkte berechnet für eine Abbildungsmatrix $A$. 

## Fixpunkte, Fixgeraden und Fixpunktgeraden für bekannte Transformationsmatrizen

| Transformationsmatrix                  | Fixpunkte                  | Fixgeraden                                          | Fixpunktgeraden |
| -------------------------------------- | -------------------------- | --------------------------------------------------- | --------------- |
| Spiegelung x-Achse                     | Alle Punkte $P(a \vert 0)$ | x-Achse<br />y-Achse<br />alle Normalen zur x-Achse | x-Achse         |
| Spiegelung y-Achse                     | Alle Punkte $P(0 \vert a)$ | x-Achse<br />y-Achse<br />alle Normalen zur y-Achse | y-Achse         |
| Skalierung                             | Ursprung $P(0 \vert 0)$    | Jeder Gerade die durch den Ursprung verläuft        | **/**           |
| Punktspiegelung am Ursprung            | Ursprung $P(0 \vert 0)$    | Jeder Gerade die durch den Ursprung verläuft        | **/**           |
| Spiegelung an der Diagonalen x=y       | Alle Punkte $P(a \vert a)$ | $f(x) = x$                                          | $f(x) = x$      |
| Drehung um Winkel $\alpha$ um Ursprung | Ursprung $P(0 \vert 0)$    | **/**                                               | **/**           |
| Scherung x-Achse                       | Alle Punkte $P(a \vert 0)$ | x-Achse                                             | x-Achse         |
| Scherung y-Achse                       | Alle Punkte $P(0 \vert a)$ | y-Achse                                             | y-Achse         |
| Identische Abbildung                   | **Alle**                   | **Alle**                                            | **Alle**        |

