# Ebenen

Ebenen sind das, was Geraden für Punkte sind. Ein geometrisches Objekt mit einer weiteren Dimension. Ein Punkt ist ein 0-dimensionales Objekt in einem $n$-dimensionalen Raum, eine Gerade ein 1-dimensionales Objekt in einem $n$-dimensionalen Raum und eine Ebene ein 2-dimensionales Objekt in einem $n$-dimensionalen Raum. Wo man bei einem Punkt eine Mögliche Koordinate als "Lösung" hat, gibt es bei Geraden unendlich viele, angegeben durch einen einzelnen Parameter ($t$). Bei einer Ebene sind es nicht 1, sondern 2 Parameter ($s$, $t$) die unendlich viele Lösungen für die Ebenengleichung liefern.

// TODO: Bild einzelne Ebene

Es gibt insgesamt 3 verschiedene Formen für die angabe von Ebenen. Diese sind **Koordinatenform**, **Paramenterform** und **Normalenform**. Es gibt zudem noch kleine Veränderungen dieser Formen, die man aber generell eher als Unterkategorie bzw. Modifizierung kategorisiert (*Achsenabschnittsform*, *Dreipunkteform*, *Hessesche Normalform*). Da diese Formen alle grundlegende Unterschiede haben sollte man zunächst einige Konzepte klären. 

## Normalenvektor

Ein **Normalenvektor** ist ein Vektor, der Orthogonal zur Ebene ist. Es gibt unendlich viele Normalenvektoren für eine Ebene. Er wird meist mit einem $\vec{n}$ gekennzeichnet.

### Einheitsnormalenvektor

Ein **Einheitsnormalenvektor** ist ein *Normalenvektor* einer Ebene mit Länge Eins, er kann wie sonst auch mit $\dfrac{\vec{n}}{\vert\vec{n}\vert}$ berechnet werden. Er wird meist mit $\vec{n_0}$ gekennzeichnet.

// TODO: Bild Normalenvektor und Einheitsnormalenvektor

Nun da man diese Begriffe kennt kann man sich den Ebenengleichungen witmen.

## Koordinatenform

// TODO: Bild Gauss-Jordan Algorithmus visualisiert; Link zu Video (https://www.algorithm-archive.org/contents/gaussian_elimination/gaussian_elimination.html; https://youtu.be/2tlwSqblrvU; leiosOS)

## Parameterform

Die **Parameterform** ähnelt der Gleichung einer Gerade sehr, mit dem kleinen Unterschied, dass man anstatt einem Parameter zwei Parameter hat. Man kann sich dies vorstellen, als ob man eine 2-dimensionale Fläche hat auf der man sich mithilfe von $x$ und $y$ Koordinaten bewegen kann (dies ist nur unter einer Bedingung exakt so, aber als Weg für die vorstellung der *Parameterform* kann diese Idee immernoch dienen) . Diese beiden Parameter werden meist als $s$ und $t$ oder $r$ und $s$ betitelt. Man hat jeweils einen *Richtungsvektor* bzw. **Spannvektor**, wie es bei der *Parameterform* genannt wird, für jeden der beiden Parameter, hierbei ist zu beachten, dass diese beiden Vektoren linear unabhängig sein müssen. Wären sie es nicht, würden beide identisch sein (wenn man die Länge der Vektoren nicht beachtet, sondern nur die Richtung). Mit den *Faktoren* / *Coeffizienten* $s$ und $t$ und den *Spannvektoren* $\vec{u}$ und $\vec{v}$ kann man nun jeden Punkt auf der Ebene erreichen.Wenn man **Einheitsvektoren** welche in einem **90° Winkel** zueinander stehen (da man schon die Vorstellung der 2-dimensionalen Fläche hat kann man sich diese auch als *kanonische Einheitsvektoren* im 2-dimensionalen Raum der Ebene vorstellen) als die *Spannvektoren* verwendet, kann man $s$ und $t$ wirklich wie $x$ und $y$ Koordinaten verwenden, da man mit diesen *Einheitsvektoren* jeweils eine Einheit zurücklegt. Dies ist die zuvor genannte Bedingung. Wie auch bei der Geradengleichung braucht man auch einen **Stützvektor**, welcher am Ursprung verankert ist, dieser wird mit $\vec{p}$ notiert und auch **Ortsvektor** genannt.

$$\Large{E: \vec{x} = \vec{p} + s \cdot \vec{u} + t \cdot \vec{v}}$$

### Dreipunktform

Die **Dreipunktform** ist theoretisch fast das gleiche wie die *Parameterform*. Die *Dreipunktform* könnte man beschreiben als Rechenweg zur Berechnung der Parameterform aus (3) Punkten. Das vorgehen ähnelt mal wieder dem der Geradengleichung: Als *Ortsvektor* nutzt man einen der 3 gegebenen Punkte, als *Spannvektoren* nimmt man die beiden restlichen Punkte und zieht von ihnen den *Ortsvektor* ab.

Für 3 gegebene Punkte $p$, $q$, $r$ lautet die Gleichung

$$\Large{E: \vec{x} = \vec{p} + s \cdot (\vec{q} - \vec{p}) + r \cdot (\vec{r} - \vec{p})}$$

## Normalenform

#### Hessesche Normalenform