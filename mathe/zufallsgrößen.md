# allgemeine Zufallsgrößen

## Zufallsgröße

Bei einer **Zufallsgröße** wird ein Wert einer Wahrscheinlichkeit zugeordnet.

$$P(X = k) = p_k$$

$P$ (groß P) wird meist als Art Funktion benutzt die die Wahrscheinlichkeit für ein Ereignis $X = k$ zurückgibt. $p_k$ (klein p) ist die individuelle Wahrscheinlichkeit für ein spezifisches Ereignis $k$.

## Histogramm

Ein **Histogramm** ist eine Methode Zufallsgrößen und ihre Ergebnisse zu visualiseren. Auf der x-Achse befinden sich die Zufallsgrößen und auf der y-Achse die Anzahl der eingetroffenen Ergebnisse für diese Zufallsgröße oder ihre Wahrscheinlichkeit.

// TODO: Histogramm Bild (draw.io)

## Erwartungswert

Der **Erwartungswert** $E(X)$ ist das zu erwartende Ergebnis eines Zufallsexperiments. Es ist oft das Ereignis mit der höchsten Wahrscheinlichkeit, kann aber auch der (*gewichtete*) Durchschnitt sein. Der Unterschied zwischen diesen beiden ist, dass ein Durchschnitt außerhalb der möglichen Ergebnisse einer **diskreten** Zufallsgröße fallen kann, indem er *zwischen* zwei möglichen Ereignissen fällt. 
Um den Erwartungswert zu erhalten multipliziert man jede Zufallsgröße mit der zugehörigen Wahrscheinlichkeit und summiert die Produkte, dadurch erhält man den (*gewichteten*) Mittelwert.

$$E(X) = \sum_{i=1}^{n} x_i \cdot P(X = x_i)$$

## Varianz

Die **Varianz** $V(X)$ ist die durchschnittliche quadratische Abweichung vom Erwartungswert. Durch das quadrieren werden negative und positive Werte normalisiert und höhere Abweichungen weitaus mehr gewichtet. Man geht ähnlich wie beim *Erwartungswert* vor, in der Hinsicht, dass man die Ereignisse (/Abweichungen) nach ihrer Häufigkeit wichtet (nachdem man sie quadriert hat). 

$$V(X) = \sum_{i=1}^{n} (E(X) - x_i)^2 \cdot P(X = x_i)$$

## Standardabweichung

Die **Standardabweichung** ist der durchschnittliche Abstand zwischen jeder Zufallsgröße und dem Erwartungswert. Die Standardabweichung ist 

// TODO: stimmt das überhaupt mit dem durchschnittlichen Abstand? das könnte relevant sein: https://de.wikipedia.org/wiki/Varianz_(Stochastik)

$$\sigma = \sqrt{V(X)}$$
