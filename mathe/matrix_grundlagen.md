## Matrix Addition

Addition bei Matrizen funktioniert indem man jeweils die Elemente an den gleichen Positionen addiert. Daraus ergibt sich die Bedingung, dass die Matrizen die gleiche Größe haben müssen. Das Ergebnis hat die gleiche Größe wie die beiden Matrizen.

$$C = A + B = \begin{pmatrix}A_{11} & A_{12} & \dots\\\\A_{21} & A_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} + \begin{pmatrix}B_{11} & B_{12} & \dots\\\\B_{21} & B_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} = \begin{pmatrix}A_{11} + B_{11} & A_{12} + B_{12} & \dots\\\\A_{21} + B_{21} & A_{22} + B_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix}$$

## Matrix Subtraktion

Subtraktion ist genau wie die Addition mit dem Unterschied, dass subtrahiert wird anstatt addiert. Die gleiche Bedingung (gleiche Größe) wie bei der Addition gilt für Subtraktion.

$$C = A - B = \begin{pmatrix}A_{11} & A_{12} & \dots\\\\A_{21} & A_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} + \begin{pmatrix}B_{11} & B_{12} & \dots\\\\B_{21} & B_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} = \begin{pmatrix}A_{11} - B_{11} & A_{12} - B_{12} & \dots\\\\A_{21} - B_{21} & A_{22} - B_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix}$$

## Matrix Multiplikation

Multiplikation mit einer anderen Matrix unterscheidet sich stark von der Verhaltensweise der Addition und Subtraktion. Man würde intuitiv vielleicht denken, dass einfach die Elemente an der gleichen Position multipliziert werden, das ist aber **nicht** was passiert. Die Dimensionen der ersten Matrix $A$ sind $n \times m$ und die der zweiten Matrix $B$ sind $m \times p$. Wie an der doppelten Verwendung von $m$ schon zu erkennen ist, muss die Anzahl der Spalten von $A$ mit der Anzahl der Zeilen von $B$ übereinstimmen.  Die resultierende Matrix hat die Dimensionen $n \times p$, also Zeilenanzahl von $A$ und Spaltenanzahl von $B$. Die Multiplikation ist folgend definiert

$$C = A \cdot B = \begin{pmatrix}A_{11} & A_{12} & \dots\\\\A_{21} & A_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} \cdot \begin{pmatrix}B_{11} & B_{12} & \dots\\\\B_{21} & B_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} = \begin{pmatrix}C_{11} & C_{12} & \dots\\\\C_{21} & C_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} \quad \Big\vert \,C_{ij} = \sum\limits_{k=1}^{m} A_{ik} \cdot B_{kj}$$

Was genau passiert lässt sich besser an einer Grafik erkennen

![Matrix Multiplikationstabelle](../assets/Mathe-diagrams-Matrix_Multiplikation.svg)

Man summiert die Produkte die durch die elementweisige Multiplikation der Zeile von $A$ und der Spalte von $B$ für das gesuchte Element in $C$ entstehen auf.  Man hat bei $2 \times 2$ Matrizen also beispielsweise für $C_{11}$ die Rechnung $C_{11} = A_{11} \cdot B_{11} + A_{12} \cdot B_{21}$.

## Multiplikation mit einem Faktor

Die Multiplikation mit einem Faktor ist so wie man es vielleicht erwarten würde. Man mulitpliziert jedes Element der Matrix mit dem Faktor.

$$C = A * b = \begin{pmatrix}A_{11} & A_{12} & \dots\\\\A_{21} & A_{22} & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix} \cdot k = \begin{pmatrix}A_{11} \cdot k & A_{12} \cdot k & \dots \\\\A_{21} \cdot k & A_{22} \cdot k & \dots\\\\\vdots & \vdots & \ddots\end{pmatrix}$$

## Transponieren

Das Transponieren einer Matrix bedeutet, dass man die Zeilen und Spalten tauscht, also der Wert eines Elementes $a_{ij}$ jetzt in $a_{ji}$ stehen würde. Man tauscht die Adressierung der Elemente. Dies kann entweder genutzt werden um Matrizen schöner darzustellen (Matrizen sehen gerne sperrig in Texten aus und manchmal hilft die Transponierung dabei dies etwas vorzubeugen) oder für wirkliche mathematische Dinge. 

$$A^T \quad | A^T_{ji} = A_{ij}; A^T \in \R^{m_A \times n_A}$$

## Matrixgleichungen

Matrixgleichungen sind Gleichungen in denen Matrizen involviert sind. Das kann z.B. heißen, dass man eine Matrix gegeben hat in der eine Variable auftritt und eine andere Matrix welche für einen bestimmten Wert der Variable der ersten Matrix gleich dieser ist. Man muss dann den Wert finden womit die beiden Matrizen gleich sind. Variationen davon, z.B. mit Matrixmultiplikation und mehreren Matrizen können auch vorkommen. Das vorhen ist dabei aber eigentlich immer das gleiche:

- Gleichung aufstellen
- Nach Variable aufstellen
- Ausrechnen
- Wert als Kontrolle einsetzen
- Ergebnis angeben