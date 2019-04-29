# Geradeneigenschaften

Bei den Eigenschaften von Geraden geht es darum, welche Eigenschaften bzw. Zustände zwischen 2 Geraden existieren können, wenn man diese in Relation zueinander betrachtet.

Zwei Geraden können:
- **parallel** sein
  - und **identisch** sein
- **windschief** sein
- sich **schneiden** bzw. einen **Schnittpunkt** haben.

> **Parallel** wird auch manchmal, zumindest für Vektoren, als **kollinear** bezeichnet, diese beiden Begriffe sind eigentlich das gleiche. Manchmal gibt es die Unterscheidung zwischen *parallel* und *anti-parallel*, falls diese gemacht wird bedeutet *kollinear*, das einfach, dass Vektoren beides sein können. 

**Identisch** ist ein Unterpunkt von Parallel, da Gleichheit Parallelität impliziert, aber Parallelität nicht Gleichheit bedeuten muss. Ein **Schnittpunkt** existiert, wenn für einen Punkt auf einer Geraden ein Punkt auf der anderen Geraden existiert an dem beiden Punkte identisch sind. Hierzu ist zu sagen, dass identische Geraden nicht dazu gezählt werden, da sie theoretisch unendlich viele Schnittpunkte haben und es darum geht, dass die Geraden sich schneiden sollen, was impliziert, dass es nur einen Schnittpunkt gibt. **Windschief** bedeutet eigentlich nur, dass keine der vorherigen Relationen existiert, die Geraden sind weder parallel noch schneiden sie sich. 

## Berechnung

Man kann mathematisch testen welche Eigenschaft / welcher Zustand vorhanden ist. Es seien die Vektoren  $g: \vec{x} = \vec{p} + r \cdot \vec{u}$ und $h: \vec{x} = \vec{q} + t \cdot \vec{v}$ gegeben

![grafische Darstellung des darunter beschriebenden Vorgehen](../assets/mathe/Geradeneigenschaften.svg)

Man überprüft zunächst ob die *Richtungsvektoren* *linear unabhängig* oder *linear abhängig* sind. Wenn die *Richtungsvektoren* *linear abhängig* sind, weiß man zunächst, dass sie parallel sein müssen, da die Richtungsvektoren in die gleiche Richtung zeigen (bzw. in die entgegengesetzte Richtung, was aber keine Auswirkung auf die *Parallelität* hat). Jetzt muss man nurnoch überprüfen, ob die Geraden vielleicht identisch sind. Hierzu prüft man, ob eine Punkt von der einen Geraden auf der zweiten Geraden liegt, wenn ja, dann sind die beiden Geraden identisch (und es liegt nicht nur dieser eine Punkt auf der anderen, sondern jeder). Falls die Geraden *linear unabhängig* sind, weiß man schonmal, dass die Richtungsvektoren in eine andere Richtung zeigen. Jetzt muss überprüft werden ob ein Schnittpunkt existiert, wenn ja *schneiden* die beiden Geraden sich, wenn nicht, sind sie *windschief* zueinander. Hierzu überprüft man, ob $g = h$ eine Lösung hat. Wenn keine Lösung existiert, dann sind sie *windschief*, wenn doch eine existiert, dann schneiden sie sich.

## Beispiel

Man hat die Punkte $A(2 \vert 2 \vert 0)$ und $B(0 \vert 4 \vert 2)$ für die Gerade $g$ gegeben, und $C(1 \vert 4 \vert 0)$ und $D(0 \vert 1 \vert 2)$ für die Gerade $h$. 

> Daraus berechnet man jeweils die Gerade $g$ bzw. $h$.

$$g: \vec{x} = \pmatrix{2\\\\2\\\\0} + t \cdot \pmatrix{-2\\\\2\\\\2}$$

$$h: \vec{x} = \pmatrix{1\\\\4\\\\0} + r \cdot \pmatrix{1\\\\3\\\\-2}$$

> Danach überprüft man ob die Richtungsvektoren (g: $\vec{u}$, h: $\vec{v}$) linear unabhängig sind.

$$\begin{alignedat}{2}
\lambda_1 \cdot -2 &+ \lambda_2 \cdot 1 & \quad = 0\\\\
\lambda_1 \cdot 2 &+  \lambda_2 \cdot 3 & \quad = 0\\\\
\lambda_1 \cdot 2 &+  \lambda_2 \cdot -2 & \quad = 0\\\\
\end{alignedat} \quad \implies \lambda_1 = \lambda_2 = 0$$

> Da $\vec{u}$ und $\vec{v}$ linear unabhängig (l.u) sind, muss jetzt überprüft werden, ob $g = h$ eine Lösung hat.

$$\pmatrix{2\\\\2\\\\0} + t \cdot \pmatrix{-2\\\\2\\\\2} \qeq \pmatrix{1\\\\4\\\\0} + r \cdot \pmatrix{1\\\\3\\\\-2} \implies \text{keine Lösung vorhanden}$$

> $g = h$ hat keine Lösung, also sind $g$ und $h$ windschief.