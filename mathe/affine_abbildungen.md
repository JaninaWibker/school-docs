# Affine Abbildungen

Eine affine Abbildung ist eine Transformation eines (affinen) Raum (Koordinatensystem) zu einem anderen (affinen) Raum. Es werden jegliche Punkte durch Matrix Multiplikation und darauffolgende Translation verändert. Eine affine Abbildung bewahrt **Kollinearität**, **Parallelität** und **Teilverhältnisse**. Punkte die vorher auf einer Gerade lagen, liegen auch nach Anwendung der Abbildung auf einer Gerade, genauso sind parallele Geraden auch noch parallel und Längenverhältnisse von kollinearen Punkten sind identisch (bis auf den Fall, dass sie alle auf den gleichen Punkt abgebildet werden). Im folgenden werden affine Abbildungen in $\R^2$ beschrieben. Affine Abbildungen in $\R^3$ sind ähnlich, benutzten aber anstatt $2 \times 2$ Matrizen $3 \times 3$ Matrizen.

Die Formel einer affinen Abbildung hat die folgende Form:

$$\large{A: \begin{pmatrix}x'\\\\y'\end{pmatrix} = \begin{pmatrix}a & b\\\\c & d\end{pmatrix} \cdot \begin{pmatrix}x\\\\y\end{pmatrix} + \begin{pmatrix}V_x\\\\V_y\end{pmatrix}}$$

<br />

$A$ die affine Abbildung. $P' = \begin{pmatrix}x'\\\\y'\end{pmatrix}$ steht als Art Platzhalter für alle Punkte transformierten Raum; genauso steht $P = \begin{pmatrix}x\\\\y\end{pmatrix}$ für alle Punkte im Ursprungsraum, die transformiert werden. $\begin{pmatrix}V_x\\\\V_y\end{pmatrix}$ ist der Translationsvektor $V$. Die Matrix $M = \begin{pmatrix}a & b\\\\c & d\end{pmatrix}$ kann die Punkte skalieren, rotieren, scheren und spiegeln.

> Die Matrix $M$ kann eine Kombination aus mehreren Matrizen $M_i$ sein, welche durch Multiplikation miteinander vereint wurden. Hierbei ist die Präzedenz so, dass die Effekte der rechtesten Matrix zuerst auftreten und die der linkesten zu letzt. Es wird also von Rechts nach Links priorisiert. $M_i$ ist nicht kommutativ.
> 
> $M = \begin{pmatrix}1 & 0 \\\\0 &  -1\end{pmatrix}\cdot \begin{pmatrix}-1 & 0 \\\\0 &  -1\end{pmatrix}$ würde die Punkte zuerst um 180° drehen und danach an der $x$-Achse spiegeln.

Ein Detail was häufig übersehen wird, bzw. ausgelassen wird, ist dass, das mehrere Punkte auf einmal transformiert werden können (stellvertretend steht eigentlich immer nur ein einzelner Punkt in einer Gleichung). Dafür muss aber beachtet werden, dass der Translationsvektor um die Anzahl an Punkten die transformiert werden sollen erweitert werden muss, sodass jeder Punkt durch die Translation beeinflusst wird.

## Abbildungsmatrizen

Es gibt viele verschiedene "Standart" Matrizen, welche **einen** genau beschriebenen Effekt haben, wie z.B. rotation um einen Faktor. Daher sind diese hier aufgelistet (Beschreibung/Abbildung $\Leftrightarrow$ Matrix)

| Abbildung                            | Matrix                                         |
| ------------------------------------ | ---------------------------------------------- |
| Spiegelung $x$-Achse                 | $\begin{pmatrix}1 & 0 \\\\0 & -1\end{pmatrix}$ |
| Spiegelung $y$-Achse                 | $\begin{pmatrix}-1 & 0 \\\\0 & 1\end{pmatrix}$ |
| Spiegelung an der Diagonalen $x = y$ | $\begin{pmatrix}0 & 1 \\\\1 & 0\end{pmatrix}$  |
| Punktspiegelung am Ursprung<br> = Drehung um 180°        | $\begin{pmatrix}-1 & 0 \\\\0 & -1\end{pmatrix}$     |
| Scherung $x$-Achse                   | $\begin{pmatrix}1 & b \\\\0 & 1\\\\\end{pmatrix}b\in\R$                 |
| Scherung $y$-Achse                   | $\begin{pmatrix}1 & 0 \\\\b & 1\end{pmatrix}b\in\R$                     |
| Drehung um den Winkel $\alpha$ gegen den Uhrzeigersinn   | $\begin{pmatrix}cos(a) & -sin(a) \\\\sin(a) &  cos(a\end{pmatrix}0\lt a\lt 360;a\in\R$ |
| Skalierung / zentrische Streckung <br>(Streckzentrum)    | $\begin{pmatrix}a & 0 \\\\0 & a\end{pmatrix}a\in\R$ |
| Identische Abbildung<br>(Neutrales Element)              | $\begin{pmatrix}1 & 0 \\\\0 & 1\end{pmatrix}$       |

## Rechnen mit affinen Abbildungen

Man kann die einzelnen Komponenten (Koordinaten) der Punkte einzeln berechnen, indem man die Formel für eine affine Abbildung in die einzelnen $x'$ und $y'$ Komponenten aufteilt.

$x' = a \cdot x + b \cdot y + v_x$
$y' = c \cdot x + d \cdot y + v_y$

Wenn man diese Gleichungen gegeben hat kann man aus diesen leicht die affine Abbildung erzeugen.

**Beispiel**:

Es seien $x'$ und $y'$ gegeben.

$$\begin{alignedat}{1}
x' & =  1 \cdot x\\\\
y' & = -1 \cdot y
\end{alignedat} \implies M = \begin{pmatrix}
1 & 0\\\\
0 & -1
\end{pmatrix}$$

Da keine Translationskomponenten ($V_x$, $V_y$) vorhanden sind its der Translationsvektor $V$ ein Nullvektor. Daraus ergibt sich dann

$$a: P' = \begin{pmatrix}1 & 0\\\\0 & -1\end{pmatrix} \cdot P$$

<br />

Wenn man die Punktepaare $P \leftrightarrow P'$ gegeben hat kann man die affine Abbildung berechnen, solange man mindestens 3 Punktepaare gegeben hat. Eine affine Abbildung hat 6 *Degrees of Freedom* (kurz: *DoF*) und jedes Punktepaar gibt 2 *DoF*, daher 3 Punktepaare.

> Wenn man weiß, dass es keinen Translationsvektor gibt reichen nur 2 Punktepaare aus, da die 2 DoF des Translationsvektors wegfallen.

Man nutzt die Gleichungen für $x'$ und $y'$ ($P_i' = (x_i', y_i')^T$) und stellt damit ein Gleichungssystem auf und löst nach $a$, $b$, $c$, $d$, $V_x$ und $V_y$. Danach kann man aus den einzelnen Werten die komplette affine Abbildung rekonstruieren.

$$\begin{alignedat}{1}
x_1' & = a \cdot x_1 + b \cdot y_1 + V_x\\\\
y_1' & = c \cdot x_1 + d \cdot y_1 + V_y\\\\
x_2' & = a \cdot x_2 + b \cdot y_2 + V_x\\\\
y_2' & = c \cdot x_2 + d \cdot y_2 + V_y\\\\
x_3' & = a \cdot x_3 + b \cdot y_3 + V_x\\\\
y_3' & = c \cdot x_3 + d \cdot y_3 + V_y
\end{alignedat} \implies A: P' = \begin{pmatrix}
a & b\\\\
c & d\\\\
\end{pmatrix} \cdot P + \begin{pmatrix}
V_x\\\\
V_y
\end{pmatrix}$$

**Beispiel**:

Es seien 3 Punktepaare $P_i \leftrightarrow P_i'$ gegeben.

$$\begin{alignedat}{1}
& P_1(1| 3)\\\\
& P_2(0| 4)\\\\
& P_3(5|-6)
\end{alignedat} \qquad \begin{alignedat}{1}
& P_1'(16,5 | -3)\\\\
& P_2'(20,5 |  2)\\\\
& P_3'(-24,5|-23)
\end{alignedat}$$

<br />

$$\begin{alignedat}{3}
16,5  & = a \cdot 1 + b \cdot  &  3 & + V_x\\\\
-3    & = c \cdot 1 + d \cdot  &  3 & + V_y\\\\
20,5  & = a \cdot 0 + b \cdot  &  4 & + V_x\\\\
2     & = c \cdot 0 + d \cdot  &  4 & + V_y\\\\
-24,5 & = a \cdot 5 + b \cdot  & -6 & + V_x\\\\
-23   & = c \cdot 5 + d \cdot  & -6 & + V_y
\end{alignedat} \implies A: P' = \begin{pmatrix}
1 & 5\\\\
-5 & 0\\\\
\end{pmatrix} \cdot P + \begin{pmatrix}
0,5\\\\
2
\end{pmatrix}$$

## Umkehrung von affinen Abbildungen

Das Umkehren von affinen Abbildungen erfolgt indem man die Inverse der Komponenten der affinen Abbildung errechnet und aus ihnen eine neue affine Abbildung erstellt, welche dann die Effekte der ersten wieder rückgängig macht.

> Wenn $A$ die affine Abbildung ist, dann ist $A^{-1}$ die Umkehrabbildung.

$A: P' = M \cdot P + V$

$A^{-1}: P = M^{-1} \cdot P' - V$

> Das Inverse von $V$ ist $-V$. Aufgrund der Simplizität wurde dies direkt eingesetzt.

Um zu überprüfen, ob $M$ erfolgreich invertiert wurde kann man $M \cdot M^{-1} = I_{2x2} = \begin{pmatrix}1 & 0\\\\0 & 1\end{pmatrix}$ als Kontrolle rechnen.

## andere Arten von Transformationen

Es gibt weitere Arten von Transformationen, welche aber nicht wie affine Transformationen im euklidischen Raum $\R^N$ bzw. affinen Raum stattfinden müssen. Zum Beispiel gibt es Projektive Abbildungen im Projektiven Raum $\P^N$. Zu [Projektionen](/mathe/projektionen.md), was teilweise eine Anwendung von Projektiven Abbildungen ist (Zentralprojektionen), gibt es bereits eine Seite.