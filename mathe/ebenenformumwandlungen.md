# Umwandlung von Ebenenformen

Die verschiedenen Formen in denen Ebenen alles angegeben bzw. definiert werden können bringen individuelle Vor- und Nachteile mit sich. Für eine bestimmte Aufgabe ist es vielleicht am besten die eine Form zu nutzen und für eine andere Aufgabe die andere, daher ist die Fähigkeit zwischen Formen umzuwandeln relativ essentiell.

> Die Umwandlung kann variieren zwischen dem, was man Händisch machen kann und wofür man ein CAS (Computer Algebra System) braucht.

## Parameterform zu Koordinatenform

### Händisch

Um eine Ebene von der *Parameterform* in die *Koordinatenform* umzuwandeln muss man eine Variation bzw. eine Art des Gauss-Algorithmus anwenden. Das Ziel ist es eine Gleichung der Form $a \cdot x_1 + b \cdot x_2 + \cdot x_3 = d$ zu erreichen, also eine Koordinatengleichung. Die Parameter $r$ und $s$ verschwinden hierbei.

> Das Vorgehen wird anstatt eines Beispiels gezeigt.

$\epsilon: \vec{x} = \begin{pmatrix}17\\-1\\5\end{pmatrix} + r \cdot \begin{pmatrix}5\\6\\1\end{pmatrix} + s \cdot \begin{pmatrix}-1\\1\\2\end{pmatrix}$

Diese Ebene stellt man nun nach $(x_1, x_2, x_3)^T$ um (dies ist trivial, es muss nichts umgestellt werden, es müssen nur die einzelnen Vektoren voneinander getrennt werden)

$$\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix} = \begin{pmatrix}17 + r \cdot 5 - s \cdot 1\\-1 + r \cdot 6 + s \cdot 1\\5 + r \cdot 1 + s \cdot 2\end{pmatrix}$$

Nun formt man diesen Vektor zu einer $3 \times 3$-Matrix um, sodass man den Gauss-Algorithmus machen kann.

$$\begin{pmatrix}17 & 5 & -1\\
-1 & 6 & 1\\
5 & 1 & 2\end{pmatrix}$$

Man versucht nun durch den "Art Gauss-Algorithmus" eine Gleichung der Form der *Koordinatenform* erreichen. Diese Gleichung baut sich Schritt für Schritt durch die Operationen auf der Matrix auf. 

In diesem Fall muss man:
1. $x_1 - x_2$
2. $x_1 + x_3$

rechnen, wodurch man dann

$$x_1 - x_2 + x_3 = 23$$

als Ergebnis erhält. Hierbei ist zu beachten, dass man meistens Faktoren vor den einzelnen Reihen ($x_n$) hat.

### CAS

Für die Berechnung mit einem CAS geht man etwas anders vor, man braucht hierbei den Gauss-Algorithmus nicht, da etwas gleichwertiges schon durch das Lösen nach bestimmten Parametern vom CAS selber gemacht werden kann. 

Man stellt wieder den Vektor $(x_1, x_2, x_3)^T$ auf. Diesen löst man dann mithilfe des CAS nach $r$ und $s$ auf. 

$\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix} \implies r, s = ..., x_1 = ...$

Man formt nach $r$ und $s$ um, wodurch aber automatisch auch eine bestimmte umgeformte Gleichung für $x_1$ vorrausgesetzt werden muss, also wird diese auch angegeben. Diese Gleichung nimmt man und formt nurnoch zur *Koordinatenform* um. Von

$$x_1 = \dfrac{-(b \cdot x_2 + c \cdot x_3 - d)}{a}$$

Zu

$$ax_1 + bx_2 + cx_3 = d$$

Womit man zuletzt die Ebenengleichung in *Koordinatenform* hat.

$$\epsilon: ax_1 + bx_2 + cx_3 = d$$

## Koordinatenform zu Parameterform

Um von der Koordinatenform zur Parameterform zu kommen muss man wieder den Vektor $(x_1, x_2, x_3)^T$ aufstellen, welcher sich dann ohne Probleme zur Parameterform umformen lässt. Das umformen zum Vektor repräsentiert die Schwierigkeit.

> Man kann dies wiedermal gut an einem Beispiel demonstrieren.

$\epsilon: 2x_1 + 1x_2 + 3x_3 = 0$

Man wählt eines der $x_n$ aus, favorisiert werden dabei (da es einfacher ist) alleinstehende $x_i$, wie $x_2$ in diesem Beispiel.

Daraufhin stellt man die Ebenengleichung zu dem gewählten $x_i$ um.

$$x_2 = -2x_1 - 3x_3$$

Nun bildet man noch zwei weitere Gleichungen für die jeweils fehlenden $x_i$

$x_1 = x_1 + 0 + 0$

$x_3 = 0 + 0 + x_3$

Hierbei verwendet man jeweils nur Referenzen auf die eigene Gleichung und füllt den Rest mit Nullen, sodass das $i$ in $x_i$ die Stelle in der Gleichung passend angibt.

Aus den 3 Gleichungen

$$\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix} = \begin{pmatrix}x_1 + 0 + 0\\-2x_1 + 0 + 0\\0 + 0 + x_3\end{pmatrix}$$

formt man jetzt die Parameterform

$$\epsilon: \vec{x} = \begin{pmatrix}1\\2\\0\end{pmatrix} + r \cdot \begin{pmatrix}0\\0\\0\end{pmatrix} + s \cdot \begin{pmatrix}0\\-3\\1\end{pmatrix}$$

Wie man sieht findet man die einzelnen $x_i$ und die mit Null gefüllten Stellen in der Parameterform wieder.