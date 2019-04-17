# Umkehrfunktionen

Die *Umkehrfunktion* bzw. *inverse Funktion* einer Funktion $f(x)$ wird als $f^{-1}(x)$ notiert. Der Wertebereich der Umkehrfunktion ist der Definitionsbereich der ursprünglichen Funktion, ebenfalls ist der Definitionsbereich der Wertebereich der ursprünglichen Funktion. Graphisch erkennt man durch diese Umkehrung der Achsen eine Spiegelung um die Funktion $f(x) = x$.


## Berechnung

Da sich bei der Umkehrfunktion die Achsen tauschen ist der einfachste Weg sie zu berechnen die ursprüngliche Funktion nach $x$ umzustellen und dann $x$ und $y$ /$f(x) miteinander zu tauschen.

<br />

**Beispiel**:

$$\begin{alignedat}{1}
f(x) &= 3x^2\\\\
y &= 2x^2\\\\
\frac{y}{3} &= x^2\\\\
\sqrt{\frac{y}{3}} &= x\\\\
f^{-1}(x) &= \sqrt{\frac{y}{3}}
\end{alignedat}$$

> Es kann oft vorkommen, dass eine Umkehrfunktion nicht perfekt die Funktion spiegelt, da eine Funktion nur einen einzelnen $y$-Wert pro $x$-Wert besitzen darf.

Wenn man überprüfen möchte, ob eine gegebene Funktion die Umkehrfunktion einer anderen ist, kann man sich zu nutze machen, dass die ursprüngliche Funktion invers zu ihrer Umkehrfunktion ist. Somit erhält man durch eine Verknüpfung der beiden das neutrale Element:

$$f^{-1}(f(x)) = x$$

<br />

**Beispiel**:

$$\begin{alignedat}{1}
f^{-1}(f(x)) &= \sqrt{\frac{3x^2}{3}}\\\\
&= \sqrt{x^2}\\\\
&= x\\\\
\implies f^{-1}(x) & \text{ ist die Umkehrfunktion von } f(x)
\end{alignedat}$$