# Geraden

Man kann Geraden durch $n$-Dimensioale Räume gut mit Vektoren beschreiben bzw. ausdrücken. Dazu nimmt man zunächst einen Vektor (mit $n$ Werten), der die Richtung vorgibt, auch **Richtungsvektor** genannt. Hierbei ist die Länge des Vektors egal, zudem kann man den Vektor auch umdrehen ohne, dass dies etwas an der Geraden verändert. Man verbindet diesen *Richtungsvektor* mit einem **Faktor** $t$, diesen Faktor kann man sich genauso vorstellen wie das $x$ bei einer herkömmlichen Geradengleichung in Form einer linearen Funktion.

Damit hat man zunächst $t \cdot \vec{u}$, wobei $t$ der *Faktor* ist und $\vec{u}$ der *Richtungsvektor*

Da Vektoren eigentlich Translationen bzw. Veränderungen sind und somit nicht zu einem bestimmten Start-/Endpunkt zuzuordnen sind, ist die Position der Gerade noch unklar. Daher braucht man einen weiteren Vektor $p$, genannt **Stützvektor**, um die Position festzusetzen. Die Besonderheit des *Stützvektors* ist, dass er an einen Startpunkt gebunden ist und somit auch einen festen Endpunkt hat. Der *Stützvektor* startet immer im Ursprung ($(0 \vert 0)$) und endet somit bei den Koordinaten die sich aus seinen Werten ergeben. Dieser Endpunkt muss auf der Geraden liegen die man erstellen will bzw. man wählt hiermit wo die Gerade liegt. 

Wenn man all dies zusammen bringt, kommt man auf folgende **Geradengleichung**:

$$\Large{g: \vec{x} = \vec{p} + t \cdot \vec{u}}$$

Hierbei ist:
- $g$ die Gerade,
- $\vec{p}$ der Stützvektor,
- $t$ der Faktor / Koeffizient (für den gilt $t \in \R$) und
- $\vec{u}$ der Richtugungsvektor

Beispielsweise könnte somit eine Geradengleichung so aussehen:

$$g: \vec{x} = \begin{pmatrix}0\\\\5\\\\-4\end{pmatrix} + t \cdot \begin{pmatrix}6\\\\-2\\\\5\end{pmatrix}$$

## Berechnung aus 2 Punkten

Meistens sind zwei Punkte gegeben, welche auf der Geraden liegen sollen und es soll daraus eine mögliche Geradengleichung errechnet werden für diese Gerade. Es seien die Punkte $A$ und $B$ gegeben.

> Es gibt unendlich viele Geradengleichungen für diese eine Gerade, da man entweder die Länge des Richtungsvektors ändern kann oder den Punkt verschieben kann an dem der Stützvektor die Gerade stützt / berührt. Die Gerade bleibt trotzdem die gleiche. 

Die einfachsten Lösungen, falls man 2 Punkte gegeben hat, sind 

$$g: \vec{x} = \vec{A} + t \cdot (\vec{B} - \vec{A})$$ und 
$$g: \vec{x} = \vec{B} + t \cdot (\vec{A} - \vec{B})$$.

Als Beispiel sind die Punkte $A(0 \vert 5 \vert {-4})$ und $B(6 \vert 3 \vert 1)$ gegeben.

$$g: \vec{x} = \begin{pmatrix}0\\\\5\\\\-4\end{pmatrix} + t \cdot \Bigg(\begin{pmatrix}6\\\\3\\\\1\end{pmatrix} - \begin{pmatrix}0\\\\5\\\\-4\end{pmatrix}\Bigg)$$

$$g: \vec{x} = \begin{pmatrix}6\\\\3\\\\1\end{pmatrix} + t \cdot \Bigg(\begin{pmatrix}0\\\\5\\\\-4\end{pmatrix} - \begin{pmatrix}6\\\\3\\\\1\end{pmatrix}\Bigg)$$