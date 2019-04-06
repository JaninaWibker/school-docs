# Binomialverteilung

Die **Binomialverteilung** ist eine **diskrete** Wahrscheinlichkeitsverteilung. Man nutzt eine Binomialverteilung, wenn man eine gewisse Anzahl an stochastisch unabhängigen Zufallsexperimenten durchführt, mit genau 2 möglichen Ergebnissen jeweils, und die Anzahl eines Ergebnisses zählt. 

Dies nennt man dann auch eine *Bernoullikette*. Oft beschreibt man bei Bernoulliketten die einzelnen Ereignisse als “Erfolg” bzw. “Misserfolg”.

<br />

## Herleitung der Formel

Die Formel für die Binomialverteilung lässt sich aus den vorher schon bekannten Formeln für Wahrscheinlichkeiten bzw. die Anzahl an Möglichkeiten unter Berücksichtigung von bestimmten Bedingungen herleiten.

Die **Reihenfolge** der Ergebnisse ist **egal**, es muss nur am Ende die Anzahl der Ergebnisse übereinstimmen. Da die Zufallsexperimente **unabhängig** sind, können Ergebnisse mehrmals auftreten (“Mit Zurücklegen”).

Aus diesen Bedingungen ergibt sich dann zunächst die Formel für die Anzahl an möglichen Kombinationen

<br />

$$\begin{pmatrix}n \\\\ k \end{pmatrix} = \dfrac{n!}{k! \cdot (n-k)!}\qquad \begin{aligned}&n \text{: Anzahl an Zufallsexperimenten}\\\\&k \text{: Anzahl an “Erfolgen"}\end{aligned}$$

<br />

Jetzt muss man aus dieser Formel noch eine Wahrscheinlichkeitsverteilung machen, also die einzelnen Wahrscheinlichkeiten $p$ und $q$ ($q = p-1$; Gegenwahrscheinlichkeit) mit einbringen.

Hierfür kann man einfach $p^k​$ und $q^{n-k}​$ benutzten, also die Wahrscheinlichkeit für $k​$ “Erfolge” und die Wahrscheinlichkeit für $n-k​$ “Misserfolge”. Daraus ergibt sich dann zuletzt die Wahrscheinlichkeitsverteilungsfunktion:

<br />

$$P(X=k) = \begin{pmatrix}n\\\\p\end{pmatrix} \cdot p^k \cdot q^{n-k}$$

## Kennwerte

Die Binomialverteilung hat mehrere Kennwerte: den **Erwartungswert** (“mu”, $\mu$), die **Standardabweichung** (“sigma”, $\sigma$), die **Varianz** ($v$), die **Erfolgswahrscheinlichkeit** ($p$), die **Gegenwahrscheinlichkeit** bzw. **Misserfolgwahrscheinlichkeit** ($q = 1 - p$), die **Zufallsgröße** ($X$) und die **Anzahl** an Zufallsexperimenten bzw. Ergebnissen ($n$). 

### Wahrscheinlichkeit(en)

Die Wahrscheinlichkeit $p$ gibt die Wahrscheinlichkeit für einen Erfolg in einem Zufallsexperiment an. Entsprechend gibt die Gegenwahrscheinlichkeit $q$ die Wahrscheinlichkeit für einen Misserfolg an.

### Erwartungswert

Der Erwartungswert $\mu$ ist die Anzahl an Erfolgen mit der höchsten Wahrscheinlichkeit. Er wird mit $n \cdot p$ berechnet ([Beweis](/mathe/erwartungswertbeweis)).

### Varianz

Die Varianz $v$ gibt den mittleren quadratischen Abstand aller Ergebnissen zum Erwartungswert an. Durch das quadrieren werden stark abweichende Werte besonders stark gesichtet. Sie lässt sich mit der Formel $v = n \cdot p \cdot q$ berechnen.

### Standardabweichung

Die Standardabweichung $\sigma$ gibt den mittleren Abstand aller Ergebnisse zum Erwartungswert an.  Die Ähnlichkeit zur Varianz zeigt sich in der Formel. Die Standardabweichung wird mit $\sigma = \sqrt{v}$ bzw. $\sigma = \sqrt{n \cdot p \cdot q}$ berechnet.

### Zufallsgröße

Die Zufallsgröße $X$ ist binomialverteilt mit $P(X=k)$ und zählt die Anzahl an “Erfolgen” der Zufallsexperimente

### Wahrscheinlichkeitsverteilungsfunktion

Die Wahrscheinlichkeit der Binomialverteilung ist mit einer Verteilungsfunktion beschrieben.

$$P(X = k) = \begin{pmatrix}n\\\\p\end{pmatrix} \cdot p^k \cdot q^{n-k} \qquad|\; n, k \in \N,\; p, q \in [0;1]$$

<br />

## Kumulierte Binomialverteilung

Die Wahrscheinlichkeitsfunktion kann auch kumuliert werden, um damit die Wahrscheinlichkeit von mehreren aufeinanderfolgenden Anzahlen an “Erfolgen” zu zählen. 

Die Kumulierte Wahrscheinlichkeitsfunktion ist die Summe der Binomialverteilung und somit:

$$P(X \le i) = \sum_{k=0}^{i} \begin{pmatrix}n\\\\k\end{pmatrix} \cdot p^k \cdot q^{n-k}$$

Diese Verteilungsfunktion beschreibt nun die Wahrscheinlichkeit, dass zwischen $0$ und $i$ mal “Erfolg” eintritt. Man kann die Summe umbauen, wie es passt, also das obere und das untere Ende verändern.

$$P(a \le X \le b) = \sum_{k=a}^{b} \begin{pmatrix}n\\\\p\end{pmatrix} \cdot p^k \cdot q^{n-k}$$

Diese Verteilungsfunktion beschreibt nun die Wahrscheinlichkeit, dass zwischen $a$ und $b$ Erfolge eintreten (inklusive $a$ und $b$).

>  Wenn man nur die erste kumulierte Binomialverteilung zur Verfügung hat kann man oft durch das Gegenereignis und oder kreatives Subtrahieren zum Ergebnis kommen.

<br />

## Histogramm

Die Wahrscheinlichkeiten, die mit der Wahrscheinlichkeitsfunktion berechnet werden, können in einem Histogramm dargestellt werden. Die Balken haben dabei immer einer Breite von 1 während die Höhe die Wahrscheinlichkeit repräsentiert. Die Fläche in einem bestimmten Bereich ist die Wahrscheinlichkeit, dass eine Anzahl aus diesem Bereich die Anzahl an Erfolgen ist. Das gesamte Vorgehen erinnert an [numerische Integration](/mathe/numerische_integration). Die Fläche vom Bereich $0$ bis $n$ muss 1 ergeben, da es immer eine insgesamte Wahrscheinlichkeit von $100\%$ gibt.

![Histogramm Binomialverteilung](../assets/mathe/Binomialverteilung.svg)

Man kann auch ein Histogramm aus der kumulierten Binomialverteilung machen.

![Histogramm kumulierte Binomialverteilung](../assets/mathe/kumulierte-Binomialverteilung.svg)