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

Einem fällt vielleicht schnell auf, dass es für bestimmte gegebene Punkte nicht nötig ist ein Gleichungssystem aufzustellen oder dieses über etwas kürzere Formeln verfügt. Soetwas kann immer der Fall sein, wenn man eine $0$ in den Koordinaten eines Punktes hat. Dadurch vereinfacht sich die Formel und manchmal fallen dadurch schnell schon Translationsvektoren weg oder einige Parameter können direkt abgelesen werden. Hier kommen die sogenannten Einheitsvektoren ins Spiel.

## Einheitsvektoren

