# e-Funktion

Die *e-Funktion* ist eine Exponentialfunktion mit der **Eulerschen Zahl** $e$ als Basis und $x$ als Expontenten, sie wird auch oft als (natürliche) Exponentialfunktion $\exp(x)$ dargestellt. Im Deutschen wird **exponentiellen Funktionen**, welche eine beliebige Basis haben können, und *der* **Exponentialfunktion**, welche $e$ als Basis hat, unterschieden. Die *Exponentialfunktion* impliziert den Suffix "zur Basis $e$", daher beschreibt die Terminologie "Exponentialfunktion zur Basis $a$" eine exponentielle Funktion anstatt *die* Exponentialfunktion. Der Prefix "natürlich" kann ähnlich wie beim Logarithmus verwendet werden um auf die Basis $e$ hinzuweisen.

![die e-Funktion](../assets/mathe/e.svg ':size=600x400')

## Eulersche Zahl

Die Eulersche Zahl ist irrational und hat viele besondere Eigenschaften. Es gibt mehrere equivalente mathematische Definitionen für die Eulersche Zahl, darunter die erste Definition die Euler selbst gab (*Grenzwert*), aber z.B. auch eine in Form eines *funktionalen Grenzwertes* bzw. einer *Folge*:

$$e \\; = \\; \sum_{k=0}^{\infty} \dfrac{1}{k!} \\; = \\; \lim_{n \to \infty} \left(1 + \dfrac{1}{n} \right)^n \approx 2,71828\\,18284\\,59045\\,\dots$$

## Eigenschaften

Die Ableitung der von $e^x$ ist $e^x$. Mit dieser Information lassen sich nun jegliche Ableitungen von $e^n \\; \mid \\; n \depends x$ berechnen. Es gilt $(e^n)' = n' \cdot e^n$. Beispielsweise ist somit $e^{2x} = 2 \cdot e^{2x}$.

Die Grenzwerte von $e^x$ sind $\displaystyle{\lim_{x \to -\infty} e^x = 0}$ und $\displaystyle{\lim_{x \to \infty} e^x = \infty}$.

Das Fläche des Integral von $-\infty$ bis $0$ hat den Wert $1$:

$$\int_{-\infty}^{0} e^x \\, dx = 1$$

## Umkehrfunktion - ln-Funktion

Die Umkehrfunktion der *e-Funktion* ist die *ln-Funktion* $\ln(x)$. Umkehrfunktionen berechnet man indem man nach x auflöst. Da $x = \ln(e^x)$ gilt:

$$y = e^x \implies x = \ln(y)$$

Daraus folgt, dass die Umkehrfunktion von $e^x$ gleich $\ln(x)$ ist. $\ln(x)$ ist der *Logarithmus Naturalis*, also der Logarithmus zur Basis $e$.

![die e-Funktion und die ln-Funktion](../assets/mathe/ln-e.svg ':size=600x400')