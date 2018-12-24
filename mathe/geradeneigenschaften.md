# Geradeneigenschaften

Bei den Eigenschaften von Geraden geht es darum, welche Eigenschaften bzw. Zustände zwischen 2 Geraden existieren können, wenn man diese in Relation zueinander betrachtet.

Zwei Geraden können:
- **parallel** sein
  - und **identisch** sein
- **windschief** sein
- sich **schneiden** bzw. einen **Schnittpunkt** haben.

**Identisch** ist ein Unterpunkt von Parallel, da Gleichheit Parallelität impliziert, aber Parallelität nicht Gleichheit bedeuten muss. Ein **Schnittpunkt** existiert, wenn für einen Punkt auf einer Geraden ein Punkt auf der anderen Geraden existiert an dem beiden Punkte identisch sind. Hierzu ist zu sagen, dass identische Geraden nicht dazu gezählt werden, da sie theoretisch unendlich viele Schnittpunkte haben und es darum geht, dass die Geraden sich schneiden sollen, was impliziert, dass es nur einen Schnittpunkt gibt. **Windschief** bedeutet eigentlich nur, dass keine der vorherigen Relationen existiert, die Geraden sind weder parallel noch schneiden sie sich. 

## Berechnung

Man kann mathematisch testen welche Eigenschaft / welcher Zustand vorhanden ist. Es seien die Vektoren  $g: \vec{x} = \vec{p} + r \cdot \vec{u}$ und $h: \vec{x} = \vec{q} + t \cdot \vec{v}$ gegeben

![grafische Darstellung des darunter beschriebenden Vorgehen](../assets/Mathe-diagrams-Geradeneigenschaften.svg)

Man überprüft zunächst ob die *Richtungsvektoren* *linear unabhängig* oder *linear abhängig* sind. Wenn die *Richtungsvektoren* *linear abhängig* sind, weiß man zunächst, dass sie parallel sein müssen, da die Richtungsvektoren in die gleiche Richtung zeigen (bzw. in die entgegengesetzte Richtung, was aber keine Auswirkung auf die *Parallelität* hat). Jetzt muss man nurnoch überprüfen, ob die Geraden vielleicht identisch sind. Hierzu prüft man, ob eine Punkt von der einen Geraden auf der zweiten Geraden liegt, wenn ja, dann sind die beiden Geraden identisch (und es liegt nicht nur dieser eine Punkt auf der anderen, sondern jeder). Falls die Geraden *linear unabhängig* sind, weiß man schonmal, dass die Richtungsvektoren in eine andere Richtung zeigen. Jetzt muss überprüft werden ob ein Schnittpunkt existiert, wenn ja *schneiden* die beiden Geraden sich, wenn nicht, sind sie *windschief* zueinander. Hierzu überprüft man, ob $g = h$ eine Lösung hat. Wenn keine Lösung existiert, dann sind sie *windschief*, wenn doch eine existiert, dann schneiden sie sich.

