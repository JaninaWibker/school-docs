# Vektor Grundlagen

## Gegenvektor

Der **Gegenvektor** eines Vektors ist ein Vektor gleicher Länge, der genau in die entgegengesetzte Richtung zeigt. Mathematisch muss man einfach die Vorzeichen aller Werte tauschen.

$$\vec{v} = \pmatrix{2\\\\4\\\\7} \implies -\vec{v} = \pmatrix{-2\\\\-4\\\\-7}$$

## Ortsvektoren

Ortsvektoren sind Vektoren, die von einem festen Bezugspunkt aus zu einem anderen Punkt gehen, sie werden mithilfe ihrer Start und Endpunkte angegeben. Ein Ortsvektor von Punkt $A$ zu Punkt $B$ wird als $\vec{AB}$ geschrieben. 

Nennenswert ist es, dass wenn man den Ursprung als Bezugspunkt wählt, man ein $O$ (für **O**rigin) für diesen Punkt nutzt.

## Addition von Vektoren

Rechnerisch addiert man Vektoren wie erwartet, jeder Wert wird mit dem jeweiligen Wert aus dem zu addierenden Vektor addiert. Grafisch sieht es aus, als würde man die Vektoren aneinander setzen. 

![grafische Vektoraddition](../assets/Mathe-diagrams-Vektoraddition.svg)

## Subtraktion von Vektoren

Rechnerisch wieder genau das zu erwartende und gleiche wie bei der Addition, nur mit subtrahieren anstatt addieren. Grafisch sieht es so aus, als ob man den Startpunkt von $\vec{b}$ an den Startpunkt von $\vec{a}$ setzt, und dann den Vektor vom Endpunkt von $\vec{b}$ zum Endpunkt von $\vec{a}$ nimmt. Man kann auch theoretisch einfach den Gegenvektor von $\vec{b}$ auf $\vec{a}$ addieren und erhält den gleichen Vektor.

![grafische Vektorsubtraktion](../assets/Mathe-diagrams-Vektorsubtraktion.svg)

## Länge von Vektoren

Die **Länge eines Vektors** (auch Betrag genannt) ist ziemlich selbsterklärend, es ist die Distanz, die ein Vektor in einer grafischen Darstellung zurücklegt. Die Länge ist aber nicht nur grafisch bestimmbar, man kann dies auch rechnerisch tun. Die Länge berechnet man mithilfe des Pythagoras.

$$\vert \vec{v} \vert = \sqrt{v_1^2 + v_2^2 + ... + v_n^2}$$

oder auch

$$\vert \vec{v} \vert = \sqrt{\sum v_i^2}$$

> Der Pythagoras funktioniert **nicht nur** in 2 Dimensionen.

Die Notation ist die gleiche wie bei der Berechnung des Betrags bei normalen Zahlen, man liest es auch genauso vor: "$\vec{v}$ Betrag"

## Einheitsvektoren

**Einheitsvektoren** sind Vektoren der Länge eins. Das bedeutet, dass Einheitsvektoren zunächst jede mögliche Richtung haben können, sie müssen nur insgesamt uaf eine Länge von eins kommen. Man kann jeden Vektor soweit verkürzen bzw. verlängern, dass man einen Einheitsvektor mit derselben Richtung erhält, indem man einfach den Vektor durch seinen Betrag teilt (Da Teilen von Vektoren ein eher komisches Konzept ist, sollte man sich dies lieber vorstellen als, multiplizieren mit dem multiplikativ Inversen des Betrags des Vektors). Dieser Prozess nennt sich *Normierung*. Im 2-Dimensionalen bilden alle Einheitsvektoren zusammen den Einheitskreis.

$$\vec{n} = \dfrac{\vec{v}}{\vert \vec{v} \vert} = \vec{v} \cdot {\vert \vec{v} \vert}^{-1}$$

Oft sieht man *Einheitsvektoren*, welche bis auf eine Eins nur aus Nullen bestehen, diese heißen **kanonische Einheitsvektoren**. Es gibt immer soviele *kanonische Einheitsvektoren* wie Dimensionen.

$$\vec{e}_1 = {\begin{pmatrix} 1\\\\0\\\\0\\\\\vdots\\\\0 \end{pmatrix}}, \; \vec{e}_2 = {\begin{pmatrix} 0\\\\1\\\\0\\\\\vdots\\\\0 \end{pmatrix}}, \; \vec{e}_3 = {\begin{pmatrix} 0\\\\0\\\\1\\\\\vdots\\\\0 \end{pmatrix}}, \; \dots ,\; \vec{e}_n = {\begin{pmatrix} 0\\\\0\\\\0\\\\\vdots\\\\1 \end{pmatrix}}$$

Die *kanonischen Einheitsvektoren* stehen immer im 90° Winkel zueinander bzw. sind Orthogonal zueinander und dadurch auch immer linear unabhängig. Sie bilden sozusagen die Basis woraus man alle anderen Vektoren in dem Raum mithilfe von Linearkombinationen bilden kann.

## Skalarprodukt

Das **Skalarprodukt** (auch *inneres Produkt* oder *Punktprodukt* (*Dotproduct*)) ist eine Zuordnung von zwei Vektoren ($\vec{a}$ und $\vec{b}$) zu einer Zahl, auch Skalar genannt. Wenn man sich *nur* in einem euklidischen Raum befindet gilt, dass $\vec{a} \cdot \vec{b} = |\vec{a}| |\vec{b}| \cos \sphericalangle (\vec{a} \vec{b})$ ist, wobei $\cos \sphericalangle (\vec{a} \vec{b}) = \cos \varphi $ der Kosinus des von beiden eingeschlossenen Winkels ist. Wenn man dazu noch ein Kartesische Koordinaten hat (alle Dimensionen liegen in einem 90°-Winkel zueinander), gilt zudem $\vec{a} \cdot \vec{b} = a_1b_1 + a_2b_2 + ...$ bzw. $\displaystyle{\sum_{i=1}^{N} a_ib_i \enspace|\enspace a, b \in \R^N}$. Daraus lässt sich $\varphi = \arccos \dfrac{\vec{a} \cdot \vec{b}}{|\vec{a}| |\vec{b}|}$ bestimmten.

## Kreuzprodukt

Das **Kreuzprodukt** (*Crossproduct*; auch *äußeres Produkt*, *Vektorprodukt* oder *vektorielles Produkt*) ist eine Zuordnung von zwei Vektoren ($\vec{a}$ und $\vec{b}) zu einem Vektor. Man stellt sich vor es wird eine Ebene aus den Vektoren $\vec{a}$ und $\vec{b}$ *aufgespannt* ([Ebenengleichung](/mathe/ebenen?id=dreipunktform) aus 3 Punkten, davon einer der Ursprung). Das Kreuzprodukt ist nun ein Vektor, der **senkrecht** auf dieser Ebene steht und die Fläche des aufgespannten Parallelogramms als Länge bzw. Betrag hat. 