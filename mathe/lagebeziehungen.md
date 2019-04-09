# Lagebeziehungen

Die Relation zwischen einer Ebene und einem anderen Objekt kann beschrieben werden. Hierbei gibt es, abhängig davon um welches andere Objekt es sich handelt, unterschiedliche Eigenschaften bzw. Beziehungen. 

## "Ebene zu Punkt"-Relationen

*Zunächst "Ebene zu Punkt"-Relationen*. Ein Punkt kann auf einer Ebene sein. Man stellt einfach die Ebene, falls in Parameterform, mit dem Punkt und überprüft, ob es ein Ergebnis, bzw. eine Lösung gibt. In Koordinatenform setzt man die einzelnen Koordinaten des Punktes in die Gleichung der Ebene ein und überprüft ob die Gleichung wahr ist.

Im Fall, dass die Ebene in **Parameterform** ist, muss man den Punkt mit der Ebene gleichsetzen und überprüfen ob es eine Lösung gibt, wenn ja, dann liegt der Punkt auf der Ebene, sonst nicht.

$$\Large{P = \epsilon \implies r, s = ... \lor \text{false}}$$

Im Fall, dass die Ebene in **Koordinatenform** ist, muss man lediglich den Punkt bzw. die einzelnen Werte des Punktes in die Gleichung einsetzen und überprüfen ob die Gleichung noch aufgeht. Wie zuvor ist der Punkt auf der Ebene, wenn die Gleichung aufgeht / eine Lösung existiert. Das Gegenteil, also dass die Gleichung nicht aufgeht, bedeutet, dass der Punkt nicht auf der Ebene liegt.

$$\Large{a \cdot P_1 + b \cdot P_2 + c \cdot P_3 = d}$$

## "Ebene zu Gerade"-Relationen

*Nun "Ebene zu Gerade"-Relationen*. Eine Gerade kann entweder genau **einen** *Schnittpunkt*, genannt **Durchstoßpunkt**, mit der Ebene haben, auf der Ebene liegen oder parallel zur Ebene verlaufen. Wenn es einen *Durchstoßpunkt* gibt, dann kann die Gerade außerdem noch einen möglichen *Normalenvektor* der Ebene als Richtungsvektor haben, in diesem Fall wäre die Gerade dann orthogonal zur Ebene. Es ist nicht möglich, dass die Gerade und die Ebene nicht parallel sind, wenn es keinen *Durchstoßpunkt* gibt, da die Ebene und die Gerade sich irgendwann treffen würden, wenn sie nicht parallel zueinander sind, wodurch ein *Durchstoßpunkt* vorhanden wäre.

Im Fall, dass man eine Ebene in **Parameterform** hat setzt man diese gleich mit der Geradengleichung und betrachtet das Ergebnis.

$\epsilon: \vec{x} = \vec{p_{\epsilon}} + r \cdot \vec{u_{\epsilon}} + s \cdot \vec{v_{\epsilon}}$

$g: \vec{x} = \vec{p_g} + t \cdot \vec{v_g}$

$$\tag{Eq} \Large{g = \epsilon} \implies ...$$

Die Ergebnisse bzw. daraus implizierten Informationen können

$$\begin{alignedat}{3}
{\scriptsize{(1)}}\\;\\;\\; \implies & \text{false} & \implies & \text{Parallelität } (g \mid\mid \epsilon)\\\\
{\scriptsize{(2)}}\\;\\;\\; \implies & r = r_1,\; s = s_1,\; t = t_1 & \implies & \text{Durchstoßpunkt } (\epsilon(r_1, s_1) = g(t_1))\\\\
{\scriptsize{(3)}}\\;\\;\\; \implies & r = r_1,\; s = s_1 & \implies & \text{Gerade in Ebene } (g \in \epsilon)
\end{alignedat}$$

sein.

1. Wenn es kein Ergebnis gibt ist die Gerade parallel zur Ebene.
2. Wenn es ein Ergebnis mit bestimmten Werten für alle 3 Parameter $r$, $s$ und $t$ gibt, gibt es einen Durchstoßpunkt.
3. Wenn es den Parameter $t$ nichtmehr gibt (optional kann dazu auch noch einer der Parameter $r$ und $s$ wegfallen, falls der entsprechende Spannvektor der Ebene linear abhängig vom Richtungsvektor $\vec{v}$ der Gerade ist) liegt die Gerade auf der Ebene.

<br />

*Beispiel*:

$\epsilon: \vec{x} = \begin{pmatrix}17\\\\-1\\\\5\end{pmatrix} + r \cdot \begin{pmatrix}5\\\\6\\\\1\end{pmatrix} + s \cdot \begin{pmatrix}-1\\\\1\\\\2\end{pmatrix}$

$g: \vec{x} = \begin{pmatrix}1\\\\2\\\\3\end{pmatrix} + t \cdot \begin{pmatrix}1\\\\0\\\\1\end{pmatrix}$

<br />

$\epsilon = g \implies r = \frac{-5}{22}, s = \frac{48}{11}, t = \frac{21}{2} \implies \text{Durchstoßpunkt}$

$g(\frac{21}{2}) = (\frac{23}{2}, {\small{2}}, \frac{27}{2})^T$

<br />

Im Fall, dass man eine Ebene in **Koordinatenform** hat, muss man die Gerade nach $(x_1, x_2, x_3)^T$ umstellen und in die Koordinatenform einsetzen.

$$g: \vec{x} = \vec{r} + t \cdot \vec{v} = \begin{pmatrix}\vec{r}_1 + t \cdot \vec{v}_1\\\\\vec{r}_2 + t \cdot \vec{v}_2\\\\\vec{r}_3 + t \cdot \vec{v}_3\end{pmatrix} = \begin{pmatrix}x_1\\\\x_2\\\\x_3\end{pmatrix}$$

$$\epsilon: ax_1 + bx_2 + cx_3 = d$$

<br />

$$\tag{Eq} \epsilon(g): a \cdot (\vec{r}_1 + t \cdot \vec{v}_1) + b \cdot (\vec{r}_2 + t \cdot \vec{v}_2) + c \cdot (\vec{r}_3 + t \cdot \vec{v}_3) = d \implies ...$$

Die Ergebnisse bzw. daraus implizierten Informationen können

$$\begin{alignedat}{3}
{\scriptsize{(1)}}\\;\\;\\; \implies & \text{false} & \implies & \text{Parallelität } (g \mid\mid \epsilon)\\\\
{\scriptsize{(2)}}\\;\\;\\; \implies & {\scriptsize{(Eq)}}\; \depends\; t & \implies & \text{Durchstoßpunkt } (\epsilon(g(t_1)))\\\\
{\scriptsize{(3)}}\\;\\;\\; \implies & {\scriptsize{(Eq)}}\; \independs\; t & \implies & \text{Gerade in Ebene } (g \in \epsilon)
\end{alignedat}$$

sein.

1. Wenn die Gleichung nicht aufgeht, egal ob $t$ vorhanden ist oder nicht, dann ist die Gerade parallel zur Ebene.
2. Wenn der Parameter $t$ noch vorhanden ist, handelt es sich um einen *Durchstoßpunkt*.
3. Ähnlich wie bei der Parameterform gibt es den Fall, dass der Parameter $t$ nichtmehr vorkommt und die Gleichung immernoch aufgeht. Das bedeutet, dass die Gerade auf der Ebene liegt.

<br />

*Beispiel*: Es sei eine Ebene $\epsilon$ in Koordinatenform und eine Gerade $g$ gegeben.

$\epsilon: -3x_1 + 1x_2 + 6x_3 = -2$

$g: \vec{x} = \begin{pmatrix}1\\\\1\\\\1\end{pmatrix} + t \cdot \begin{pmatrix}2\\\\2\\\\\frac{2}{3}\end{pmatrix} = \begin{pmatrix}1+t\cdot 2\\\\1+t\cdot 2\\\\1+t\cdot\frac{2}{3}\end{pmatrix} = \begin{pmatrix}x_1\\\\x_2\\\\x_3\end{pmatrix}$

$-3 \cdot (1 + 2t) + 1 \cdot (1 + 2t) + 6 \cdot (1 + \frac{2}{3}t) = -6 \cdot t - 3 + 6 \cdot t + 7 = 4 \neq -2 \implies \text{Parallelität}$

Die Begründung warum diese Ergebnisse diese Relationen bedeuten ist logisch leicht herleitbar. Wenn der Parameter $t$ nichtmehr da ist, ist er egal bzw. verändert er nichts mehr an der Gleichung. Daher gibt es für jedes beliebige $t$ eine Lösung und somit muss die Gerade auf der Ebene liegen. Im Fall, dass $t$ relevant ist, gibt es dem zufolge nur eine Lösung für $t$, wodurch es nur einen *Durchstoßpunkt* gibt. Damit bleibt nurnoch als letzte Option die Parallelität für die restlichen Fälle. Wenn das Gleichsetzen unmöglich ist oder die Gleichung nicht aufgeht, heißt das, dass es keinen Durchstoßpunkt gibt, die Gerade aber auch nicht auf der Ebene liegt. Dies ist nur möglich, wenn die Gerade parallel zur Ebene ist ($g \mid\mid \epsilon$).

## "Ebene zu Ebene"-Relationen

*Zu guter letzt "Ebene zu Ebene"-Relationen*. Eine Ebene kann entweder identisch bzw. equivalent zu einer anderen Ebene sein, eine Schnittgerade mit einer anderen Ebene haben oder parallel zu einer anderen Ebene sein. Es kann keinen einzelnen Schnittpunkt geben, da Ebenen endlos lang und breit sind, wodurch immer eine Schnittgerade entsteht, anstatt ein Schnittpunkt. Die Vorgehensweise ist wie zuvor auch abhängig von der Form der Ebenengleichung. Wenn beide Ebenen in der Parameterform sind, muss man sie gleich setzen und impliziert dadurch eins der möglichen Ergebnisse. Wenn die Formen unterschiedlich sind muss man die Ebene in Parameterform nach $(x_1, x_2, x_3)^T$ umformen und in die Koordinatengleichung einsetzen. Bei zwei Ebenen in Koordinatenform...

Es seien beide Ebenen in Parameterform:

$\epsilon_1: \vec{x} = \vec{p_{\epsilon_1}} + r_{\epsilon_1} \cdot \vec{u_{\epsilon_1}} + s_{\epsilon_1} \cdot \vec{v_{\epsilon_1}}$

$\epsilon_2: \vec{x} = \vec{p_{\epsilon_2}} + r_{\epsilon_2} \cdot \vec{u_{\epsilon_2}} + s_{\epsilon_2} \cdot \vec{v_{\epsilon_2}}$

<br />

Man setzt die Ebenen miteinander gleich und interpretiert das Ergebnis.

$$\tag{Eq} \Large{\epsilon_1 = \epsilon_2}$$

Die Ergebnisse bzw. daraus implizierten Informationen können

$$\begin{alignedat}{3}
{\scriptsize{(1)}}\\;\\;\\; \implies & \text{false} & \implies & \text{Parallelität } (\epsilon_1 \mid\mid \epsilon_2)\\\\
{\scriptsize{(2)}}\\;\\;\\; \implies & (r_{\epsilon_1}, s_{\epsilon_1}, r_{\epsilon_2}, s_{\epsilon_2})\;\depends\; t & \implies & \text{Schnittgerade } (g(\epsilon_1 = \epsilon_2))\\\\
{\scriptsize{(3)}}\\;\\;\\; \implies & (r_{\epsilon_1}, s_{\epsilon_1}, r_{\epsilon_2}, s_{\epsilon_2})\; \independs\; t, \;\; (r_{\epsilon_1}, s_{\epsilon_1})\; \depends\; (r_{\epsilon_2} \cup s_{\epsilon_2}) \; & \implies & \text{Equivalent } (\epsilon_1 = \epsilon_2)
\end{alignedat}$$

sein.

1. Wenn die Gleichung nicht aufgehen kann, dann muss es sich um parallel zueinander liegende Ebenen handeln, da sie sonst entweder eine Schnittgerade haben würden oder equivalent wären.
2. Wenn alle Parameter der beiden Ebenen eine Abhängigkeit von $t$ haben, dann gibt es eine Schnittgerade. Dieser Parameter $t$ ist der Parameter der neuen Geradengleichung.
3. Wenn keine Abhängigkeit von $t$ vorkommt, sondern nur eine Abhängigkeit von den Parametern der anderen Ebene, dann sind die Ebenen equivalent. Dies kann man auch überprüfen indem man guckt, ob der *Ortsvektor* in beiden Ebenen gleich ist und jeweils 2 *Spannvektoren* linear abhängig sind.

<br />

*Beispiel*:

$\epsilon_1: \vec{x} = \begin{pmatrix}1\\\\1\\\\1\end{pmatrix} + r_{\epsilon_1} \cdot \begin{pmatrix}1\\\\2\\\\3\end{pmatrix} + s_{\epsilon_1} \cdot \begin{pmatrix}3\\\\2\\\\1\end{pmatrix}$

$\epsilon_2: \vec{x} = \begin{pmatrix}1\\\\3\\\\2\end{pmatrix} + r_{\epsilon_2} \cdot \begin{pmatrix}2\\\\1\\\\1\end{pmatrix} + s_{\epsilon_2} \cdot \begin{pmatrix}3\\\\2\\\\3\end{pmatrix}$

<br />

$\epsilon_1 = \epsilon_2 \implies r_{\epsilon_1} = \frac{2 \cdot t + 3}{4},\; s_{\epsilon_1} = \frac{7 - 2 \cdot t}{4},\; r_{\epsilon_2} = \small{3 - 2 \cdot t},\; s_{\epsilon_2} = \small{t} \implies \text{Schnittgerade}$

$g: \vec{x} = \begin{pmatrix}1\\\\1\\\\1\end{pmatrix} + \frac{2 \cdot t + 3}{4} \cdot \begin{pmatrix}1\\\\2\\\\3\end{pmatrix} + \frac{7 - 2 \cdot t}{4} \cdot \begin{pmatrix}3\\\\2\\\\1\end{pmatrix} = \begin{pmatrix}7\\\\6\\\\5\end{pmatrix} + t \cdot \begin{pmatrix}-1\\\\0\\\\1\end{pmatrix}$

Eine Ebene sei in Parameterform, die andere in Koordinatenform. Man muss jetzt die Ebene in Parameterform zu $(x_1, x_2, x_3)^T$ umformen und in die Koordinatenform einsetzen.

$\epsilon_1: \vec{x} = \vec{p_{\epsilon_1}} + r_{\epsilon_1} \cdot \vec{u_{\epsilon_1}} + s_{\epsilon_1} \cdot \vec{v_{\epsilon_1}} = \begin{pmatrix}x_1\\\\x_2\\\\x_3\end{pmatrix}$

$\epsilon_2: ax_{\epsilon_{2}1} + bx_{\epsilon_{2}2} + cx_{\epsilon_{2}3} = d$

<br />

$$\tag{Eq} \Large{a \cdot x_{\epsilon_{1}1} + b \cdot x_{\epsilon_{1}2} + c \cdot x_{\epsilon_{1}3} = d}$$

Die Ergebnisse bzw. daraus implizierten Informationen können

$$\begin{alignedat}{3}
{\scriptsize{(1)}}\\;\\;\\; \implies & \text{false} & \implies & \text{Parallelität } (\epsilon_1 \mid\mid \epsilon_2)\\\\
{\scriptsize{(2)}}\\;\\;\\; \implies & (r_{\epsilon_1}, s_{\epsilon_1})\; \depends\; t\;\; & \implies & \text{Schnittgerade } (g(\epsilon_1 = \epsilon_2))\\\\
{\scriptsize{(3)}}\\;\\;\\; \implies & \text{true} & \implies & \text{Equivalent } (\epsilon_1 = \epsilon_2)
\end{alignedat}$$

sein.

1. Wenn die Gleichung nicht aufgeht, egal welche $r_{\epsilon_1}$ und $s_{\epsilon_2}$ gewählt werden, dann sind die Ebenen parallel zueinander. Die Parameter kürzen sich komplett heraus.
2. Wenn die Parameter $r_{\epsilon_1}$ und $s_{\epsilon_1}$ von einem weiteren Parameter $t$ abhängig sind, dann gibt es eine Schnittgerade mit dem Parameter $t$.
3. Wenn die Parameter $r_{\epsilon_1}$ und $s_{\epsilon_1}$ sich komplett herauskürzen und die Gleichung aufgeht, dann sind die beiden Ebenen identisch bzw. equivalent.

*Beispiel*:

$\epsilon_1: \vec{x} = \begin{pmatrix}0\\\\0\\\\\frac{-1}{3}\end{pmatrix} + r \cdot \begin{pmatrix}1\\\\0\\\\\frac{-5}{6}\end{pmatrix} + s \cdot \begin{pmatrix}0\\\\1\\\\\frac{13}{6}\end{pmatrix} = \begin{pmatrix}r\\\\s\\\\\frac{-1}{3} + r \cdot \frac{-5}{6} + s \cdot \frac{13}{6}\end{pmatrix}$

$\epsilon_2: -5x_1 + 13x_2 - 6x_3 = 4$

<br />

Man setzt $\epsilon_1$ in $\epsilon_2$ ein.

$$\large{-5 \cdot (r) + 13 \cdot (s) - 6 \cdot (\frac{-1}{3} + r \cdot \frac{-5}{6} + s \cdot \frac{13}{6}) = 2 \neq 4 \implies \text{false}}$$

Die Parameter kürzen sich heraus und die Gleichung geht nicht auf, daher sind die Ebenen *parallel* zueinander.

<br />
<br />

> **Notation**:<br />
> $X \; \depends \; Y$ bedeutet *$X {\small{\text{ ist abhängig von }}} Y$*<br />
> $X \; \independs \; Y$ bedeutet *$X {\small{\text{ ist unabhängig von }}} Y$*<br />
> $X \; \mid\mid \; Y$ bedeutet *$X {\small{\text{ ist parallel zu }}} Y$*<br />
> $X \; = \; Y \implies ...$ bedeutet *$X {\small{\text{ wird mit }}} Y {\small{\text{ gleichgesetzt, woraus etwas impliziert werden kann}}}$*<br />
> $X(Y)$ bedeutet *$Y {\small{\text{ wurde in }}} X {\small{\text{ eingesetzt (Beispiel: ein }}} t {\small{\text{ wurde in eine Gerade }}} g {\small{\text{ eingesetzt)}}}$*