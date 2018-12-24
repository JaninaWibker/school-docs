# Linearkombination

Eine Linearkombination ist eine Sumem von Vektoren, welche jeweils mit einem Faktor / Koeffizienten versehen sind. Diese Koeffizienten werden meist als $\lambda_i$ (Lambda) dargestellt. Die Vektoren, falls man sie mit einer Index-Notation darstellen will werden oft als $a_i$ geschrieben. Damit ist also die Definition einer Linearkombination

$$\vec{b} = \lambda_1 \cdot a_1 + \lambda_2 \cdot a_2 + ... + \lambda_n \cdot a_n \quad n \in \N, \lambda_i \in \R$$

## Nullvektor

Um die *Nullsumme* zu verstehen muss man zunächst wissen, was der **Nullvektor** ist. Der Nullvektor eines Vektorraumes ist einfach ein Vektor des Vektorraumes, welcher für jede Dimension den Wert 0 hat. Anders gesagt, er ist das neutrale Element der Addition im Vektorraum.

$$\vec{0}_2 = \begin{pmatrix}0\\\\0\end{pmatrix}$$

$$\vec{0}_4 = \begin{pmatrix}0\\\\0\\\\0\\\\0\end{pmatrix}$$

## Nullsumme

Eine *Linearkombination*, welche den *Nullvektor* $\vec{o}$ ergibt wird **Nullsumme** genannt. Es gilt also

$$\vec{0} = \lambda_1 \cdot a_1 + \lambda_2 \cdot a_2 + ... + \lambda_n \cdot a_n$$

Sind alle Koeffizienten gleich 0, dann heißt die Linearkombination **triviale Nullsumme**. Ist mindestens ein Koeffizient ungleich 0, dann heißt die Linearkombination **nichttriviale Nullsumme**.

**Beispiel**:

triviale Nullsumme:

$$\vec{0} = 0 \cdot \begin{pmatrix}2\\\\3\end{pmatrix} + 0 \cdot \begin{pmatrix}1\\\\4\end{pmatrix}$$

nichttriviale Nullsumme:

$$\vec{0} = 2 \cdot \begin{pmatrix}1\\\\2\end{pmatrix} - 1 \cdot \begin{pmatrix}2\\\\4\end{pmatrix}$$

## Linear abhängig und Linear unabhängig

Eine Gruppe von Vektoren heißt **linear abhängig**, oder kurz auch **l.a**, wenn eine *nichttriviale Nullsumme* für diese Gruppe von Vektoren existiert. Es muss also mindestens 1 Faktor / Koeffizient ungleich 0 sein. 
Man kann dies auch anders formulieren bzw. definieren: Die Gruppe von Vektoren heißt **l.a**, wenn man einen Vektor aus der Gruppe durch eine Linearkombination der restlichen Vektoren erstellen kann. 

$$\lambda = \{ \lambda_1, \lambda_2, ..., \lambda_n \} \quad \vert \; \exists \lambda_i \neq 0$$

**Linear unabhängig**, oder kurz auch **l.u**, ist das exakte Gegenteil. Wenn man **nur** eine *triviale Nullsumme* bilden kann und **keine** *nichttriviale Nullsumme*, dann handelt es sich um linear unabhängige Vektoren. 
Man kann dies wiedermal auch anders formulieren bzw. definieren: Die Gruppe von Vektoren heißt **l.u**, wenn man einen Vektor aus der Gruppe **nicht** durch eine Linearkombination der restlichen Vektoren erstellen kann.

$$\lambda = \{ \lambda_1, \lambda_2, ..., \lambda_n \} \quad \vert \; \lambda_i = 0$$

> Sobald man mehr Vektoren als Dimensionen (also $n+1$) hat sind die Vektoren immer linear abhängig, da nichtmehr genug Möglichkeiten für Varianz / Abweichungen zwischen den Vektoren vorhanden sind, sodass Unabhängigkeit nichtmehr möglich ist.

### Berechnung

Man berechnet die *lineare Abhängigkeit* bzw. *lineare Unabhängigkeit* indem man ein lineares Gleichungssystem aufstellt und berechnet, was für Lösungen existieren für $\lambda$. Falls $\lambda_1 = \lambda_2 = ... = \lambda_n = 0$ als einzige Lösung herauskommt sind die Vektoren *linear unabhängig*. Andernfalls müssen unendlich viele Lösungen herauskommen, bzw. eine Lösung mit einem frei wählbaren Faktor, was unendlich vielen Lösungen impliziert. Hierbei handelt es sich dann um *linear abhängige* Vektoren.

$$\begin{aligned}
\lambda_1 \cdot a_{1;1} + \lambda_2 \cdot a_{2;1} + ... + \lambda \cdot a_{n;1} = 0\\\\
\lambda_1 \cdot a_{1;2} + \lambda_2 \cdot a_{2;2} + ... + \lambda \cdot a_{n;2} = 0
\end{aligned}\\\\...\\\\\begin{aligned}
\lambda_n \cdot a_{1;n} + \lambda_2 \cdot a_{2;n} + ... + \lambda \cdot a_{n;n} = 0\\\\
\end{aligned}$$

> Nach $\lambda_i$ auflösen und überprüfen ob alle möglichen $\lambda_i$-Werte gleich 0 sind. 