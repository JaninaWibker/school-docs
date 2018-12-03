# Verschlüsselung mit Matrizen

Es gibt mehrere Wege Matrizen zum Verschlüsseln einzusetzen, dazu gehören **Multiplikation** und **Addition**.

Man nehme an, dass eine Matrix $T=\begin{pmatrix}e & f & g & h\\\\i & j & k & l \end{pmatrix}$ mit einer Matrix $C=\begin{pmatrix}a & b\\\\c & d\end{pmatrix}$ verschlüsselt wird. Man würde entweder die beiden Matrizen addieren oder multiplizieren, abhängig von der gewählten Methode.  

## Addition

Bei der Addition addiert man einfach die zu verschlüsselnde Matrix und die Verschlüsselungsmatrix. Um das Ergebnis wieder zu entschlüsseln muss man das Inverse der Verschlüsselungsmatrix auf das Ergebnis addieren.

$T' = C + T$

$T=T'+(-C)$

> Dies gilt, da das neutrale Element der Addition $E = \text{0} = C + (-C)$ ist

Man muss bei der Addition bedenken, dass die zu verschlüsselnde Matrix größer sein kann als die Verschlüsselungsmatrix, in diesem Fall kann man einfach die Verschlüsselungsmatrix "wiederholen", also eine größere Matrix aus ihr machen in der sich die Werte wiederholen. Dann muss man auch natürlich von dieser neuen Verschlüsselungsmatrix das Inverse nehmen.

## Multiplikation

Bei der Multiplikation multipliziert man die zu verschlüsselne Matrix mit der Verschlüssselungsmatrix. Um das Ergebnis wieder zu entschlüsseln muss man das Inverse zur Verschlüsselungsmatrix finden.

$T' = C \cdot T$

$T = T' \cdot C^{-1}$

> Dies gilt, da das neutrale Element der Multiplikation $E = C \cdot C^{-1}$ ist
