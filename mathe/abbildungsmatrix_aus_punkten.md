# Abbildungsmatrizen aus Punkten

Man kann eine unbekannte Abbildungsmatrix aus nur 2 Punkten und ihren Bildpunkten berechnen, solange keine Translation involviert ist. Falls Translation involviert ist braucht man mindestens 3 Punkte und ihre Bildpunkte. 

Das ausrechnen erfolgt wie so oft durch ein Gleichungssystem. Man stellt die einzelnen Formeln für die Koordinaten der Bildpunkte auf und löst dann das Gleichungssystem nach den 4 Komponenten der Abbildungsmatrix und gegebenenfalls zusätzlich noch nach dem Translationsvektor.

Punkte $P$, $Q$, $S$ seien gegeben, sowie deren Bildpunkte $P'$, $Q'$ und $S'$. Gesucht ist die Abbildungsmatrix $A = \begin{pmatrix}a & b\\\\c & d\end{pmatrix}$ sowie der Translationsvektor $v = \begin{pmatrix}v_x\\\\v_y\end{pmatrix}$.



$$\begin{aligned}
a \cdot P_x + b \cdot P_y + v_x = P'_x\\\\
a \cdot Q_x + b \cdot Q_y + v_x = Q'_x\\\\
a \cdot S_x + b \cdot S_y + v_x = S'_x\\\\
c \cdot P_x + d \cdot P_y + v_y = P'_y\\\\
c \cdot Q_x + d \cdot Q_y + v_y = Q'_y\\\\
c \cdot S_x + d \cdot S_y + v_y = S'_y
\end{aligned}$$

Dieses Gleichungssystem muss nun nach $a, b, c, d, v_x$ und $v_y$ gelöst werden. Sobald man diese Werte hat kann man eine affine Abbildungsgleichung aufstellen.

$$\alpha: \begin{pmatrix}x\\\\y\end{pmatrix} = \begin{pmatrix}a & b\\\\c & d\end{pmatrix} \cdot \begin{pmatrix}x\\\\y\end{pmatrix} + \begin{pmatrix}v_x\\\\v_y\end{pmatrix}$$

Einem fällt vielleicht schnell auf, dass es für bestimmte gegebene Punkte nicht nötig ist ein Gleichungssystem aufzustellen oder dieses über etwas kürzere Formeln verfügt. Soetwas kann immer der Fall sein, wenn man eine $0​$ in den Koordinaten eines Punktes hat. Dadurch vereinfacht sich die Formel und manchmal fallen dadurch schnell schon Translationsvektoren weg oder es einige Parameter können direkt abgelesen werden. Hier können die sogenannten Einheitsvektoren ins Spiel kommen.

## Einheitsvektoren

Wenn man als Punkte $P(1 \vert 0)$ und $Q(0 \vert 1)$ gegeben hat nennt man diese auch Einheitsvektoren und schreibt sie als $E_1=\begin{pmatrix}1\\\\0\end{pmatrix}$ und $E_2 = \begin{pmatrix}0\\\\1\end{pmatrix}$ auf. Wenn diese Einheitsvektoren und ihre Bildpunkte $E'_1$ und $E'_2$ gegeben sind muss man kein Gleichungssystem aufstellen (solange es sich um eine translations-freie Abbildung handelt), da durch die $1$ und $0$ jeweils in jeder Gleichung im Gleichungssystem nur eine Variable alleine ohne Faktor stehen würde. 

$P(1 \vert 0) \implies P’(P_x \vert P_y)$

$Q(0 \vert 1) \implies Q'(Q_x \vert Q_y)$

Aus diesen Punkten folgt

$E_1=\begin{pmatrix}1\\\\0\end{pmatrix} \implies E'_1=\begin{pmatrix}P_x\\\\P_y\end{pmatrix}$ 

$E_2=\begin{pmatrix}0\\\\1\end{pmatrix} \implies E'_2=\begin{pmatrix}Q_x\\\\Q_y\end{pmatrix}$

Daraus kann man schließen, dass die Abbildungsmatrix $A$ folgendes ist

$A = \begin{pmatrix}P_x & Q_x\\\\P_y & Q_y\end{pmatrix}$

Man kann sich also merken, dass der erste Punkt $P$ die erste Spalte der Abbildungsmatrix $A$ ist und der zweite Punkt $Q$ die zweite Spalte der Abbildungsmatrix ist. 

>  Wenn man $E’_1$ und $E’_2$ als Vektoren aufschreibt sieht man, dass jeder Vektor eine Spalte von $A$ repräsentiert. 

Falls ein Translationsvektor vorhanden ist und man zusätzlich einen Punkt $S(0 \vert 0)$ gegeben hat muss man kein Gleichungssystem aufstellen, wenn man einen anderen Punkt $S$ gegeben hat schon.

Mit dem Punkt $S$ erhält man sofort den Translationsvektor, also muss man ihn nurnoch überall rausrechnen.

$A = \begin{pmatrix}P_x-v_x & Q_x-v_x\\\\P_y-v_y & Q_y-v_y\end{pmatrix}$