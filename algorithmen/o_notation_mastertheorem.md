# O-Notation und Mastertheorem

## O-Notation

Mit der O-Notation beschreibt man die Laufzeit von Algorithmen.
Hierbei sind genaue Werte wie Faktoren unwichtig und können weggelassen werden.
Es wird von **asymptotischer Laufzeit** geredet;
es kann also immer ein beliebig großer aber fester Faktor hinzugefügt werden und sobald die Laufzeit *irgendwann* die Laufzeit einer anderen Funktion überholt heißt es, dass diese asymptotisch größer ist.

Die **Landau-Symbole** werden verwendet um asymptotische Laufzeiten einfach in Relation zu stellen.

> Die Symbole $O$, $\Omega$ und $\Theta$ sind hierbei die wichtigsten; obwohl auch hier meistens nur $O$ Anwendung findet.

| Notation          | Definition | Grenzwertschreibweise | Quantorenschreibweise |
| ----------------- | ---------- | --------------------- | --------------------- |
| $f \in O(g)$      | asymptotische obere Schranke  | $\displaystyle{\limsup_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert < \infty}$ | $\exists C > 0 \exists x_0 > 0 \forall x > x_0 : \vert f(x) \vert \le C \cdot \vert g(x) \vert$ |
| $f \in \Omega(g)$ | asymptotische untere Schranke | $\displaystyle{\liminf_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert > 0}$      | $\exists c > 0 \exists x_0 > 0 \forall x > x_0 : c \cdot \vert g(x) \vert \le \vert f(x) \vert$ |
| $f \in \Theta(g)$ | asymptotisch scharfe Schranke, sowohl $f \in O(g)$ als auch $f \in O(g)$ | $\displaystyle{0 \lt \liminf_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert \le \limsup_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert \lt \infty}$  | $\exists c > 0 \exists C > 0 \exists x_0 \forall x > x_0 : c \cdot \vert g(x) \vert \le \vert f(x) \vert \le C \cdot \vert g(x) \vert$  |
|                   |            |                       |                       |
| $f \in o(g)$      | asymptotisch gegenüber $g$ vernachlässigbar | $\displaystyle{\lim_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert = 0}$ | $\forall C > 0 \exists x_0 > 0 \forall x > x_0 : \vert f(x) \vert < C \cdot \vert g(x) \vert$ |
| $f \in \omega(g)$ | asymptotisch dominant, $g \in o(f)$ | $\displaystyle{\lim_{x \to \infty} \vert \tfrac{f(x)}{g(x)} \vert = \infty}$    | $\forall c > 0 \exists x_0 > 0 \forall x > x_0 : c \cdot \vert g(x) \vert < \vert f(x) \vert$ |


## Mastertheorem

Mit dem Mastertheorem kann man in vielen Fällen schnell klären in welcher Komplexitätsklasse gewisse rekursiv definierte Funktionen liegen.

Hierbei hat man im Allgemeinen eine Funktion der folgenden Form gegeben:

$$T(n) = a \cdot T(\tfrac{n}{b}) + f(n)$$

> Des öfteren sieht man auch Gaußklammern um $\tfrac{n}{b}$ rum, diese helfen manchmal; können aber im Allgemeinen eigentlich ignoriert werden.

Die folgenden Fälle gibt es (und sollten **nacheinander** überprüft werden; der erste passende diktiert das Ergebnis)

|                  | Erster Fall | Zweiter Fall | Dritter Fall |
| ---------------- | ----------- | ------------ | ------------ |
| Bedingung        | $f(n) \in O(n^{\log_b(a)-\epsilon})$ für ein $\epsilon > 0$ | $f \in \Theta(n^{\log_b(a)})$ | $f(n) \in \Omega(n^{\log_b(a)+\epsilon})$ für ein $\epsilon > 0$ und<br /> ebenfalls für ein $c$ mit $c \in (0; 1)$ und<br /> für alle hinreichend großen $n$ gilt: $af(\tfrac{n}{b}) \le cf(n)$ |
| Schlussfolgerung | $T(n) \in \Theta(n^{\log_b(a)})$ | $T(n) \in \Theta(n^{\log_b(a)} \cdot \log(n))$ | $T(n) \in \Theta(f(n))$ |

Falls keiner der Fälle anwendbar ist, ist auch das Mastertheorem nicht anwendbar und kann keine Aussage liefern.

