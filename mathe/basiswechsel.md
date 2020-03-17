# Basiswechsel

> Vorlesung 12/13/24

Jede lineare Abbildung besitzt eine Abbildungsmatrix.

## Satz der linearen Fortsetzung

Die Abbildungsmatrix kann durch den **Satz der linearen Fortsetzung** bestimmt werden.

**TODO**: was ist das für eine Formulierung?
Es sei $B$ eine geordnete Basis und $\Phi$ eine lineare Abbildung, dann ist $D_{BB}(\Phi)$ das Bild der Basisvektoren als Linearkombination der Vektoren in Basis $B$.. $D_{BB}(\Phi)=$ $$\begin{pmatrix}
b^*_1(\Phi(b_1)) & b^*_1(\Phi(b_2))  & \dots & b^*_1(\Phi(b_n)) \\\\
b^*_2(\Phi(b_1)) & b^*_2(\Phi(b_2)) & \dots & b^*_1(\Phi(b_n)) \\\\
\vdots & \vdots & \vdots & \vdots \\\\
b^*_n(\Phi(b_1)) & b^*_n(\Phi(b_2)) & \dots & b^*_n(\Phi(b_n))
\end{pmatrix}$$

Das einfachste Beispiel ist die Einheitsbasis, da $$\begin{pmatrix}
e^*_1(\Phi(e_i)) 
\\ e^*_2(\Phi(e_i)) 
\\ \dots 
\\ e^*_n(\Phi(e_i)
\end{pmatrix} = \Phi(e_i)$$ ist.

Aber man kann auch von anderen beliebigen Basis zu einer weiteren beliebigen Basis abbilden.

Es seien $C$ und $B$ geordneten Basen. Die Basiswechselmatrix $D_{BC}(\Phi)$, also von Basis $C$ nach Basis $B$, wäre dann $$D_{CB}(\Phi)=\begin{pmatrix}
c^*_1(\Phi(b_1)) & c^*_1(\Phi(b_2))  & \dots & c^*_1(\Phi(b_n)) \\\\
c^*_2(\Phi(b_1)) & c^*_2(\Phi(b_2)) & \dots & c^*_2(\Phi(b_n)) \\\\
\vdots & \vdots & \vdots & \vdots \\\\
c^*_n(\Phi(b_1)) & c^*_n(\Phi(b_2)) & \dots & c^*_n(\Phi(b_n))
\end{pmatrix}$$

## Basiswechselmatrix

Wenn die Abbildungsmatrix schon gegeben ist und man gerne die Basis der Matrix ändern will, kann man hierfür Basiswechselmatrizen nutzen.

Sei $E$ die Standartbasis, $B$ eine geordnete Basis und $\Phi$ eine lineare Abbildung

$D_{BB}(\Phi)=D_{BE}(Id) \cdot D_{EE}(\Phi) \cdot D_{EB}(Id)$

$D_{BE}$ ist die Abbildungsmatrix von Basis $E$ zu Basis $B$.

$Id$ Ist die Identität, also die Einheitsmatrix.

Wie man leicht erkennen kann, ist $D_{BE}(Id) \cdot D_{EB}(Id) = D_{BB}(Id) \implies D_{BE}(Id) = D_{EB}(Id)^{-1}$.

Dies ist auch mit zwei verschiedenen Basen möglich: Sei $C$ auch eine geordnete Basis, dann ist

$D_{BC}(\Phi)=D_{BE}(Id) \cdot D_{EE}(\Phi) \cdot D_{EC}(Id)$.

### Bestimmen der Basiswechselmatrix

Die Basiswechselmatrix bestimmt man am besten wieder mit Hilfe der **linearen Fortsetzung** also:

Es seien wieder $B$ und $C$ zwei geordnete Basen:

Um nun $D_{CB}(Id)$ zu bestimmen muss man wieder $$D_{CB}(\Phi)=\begin{pmatrix}
c^*_1(\Phi(b_1)) & c^*_1(\Phi(b_2))  & \dots & c^*_1(\Phi(b_n)) \\\\
c^*_2(\Phi(b_1)) & c^*_2(\Phi(b_2)) & \dots & c^*_2(\Phi(b_n)) \\\\
\vdots & \vdots & \vdots & \vdots \\\\
c^*_n(\Phi(b_1)) & c^*_n(\Phi(b_2)) & \dots & c^*_n(\Phi(b_n))
\end{pmatrix}$$

berechnen. Da in diesem Fall $\Phi$ die Identität ist, kann man einfach

$$D_{CB}(Id)=\begin{pmatrix}
c^*_1(b_1) & c^*_1(b_2)  & \dots & c^*_1(b_n) \\\\
c^*_2(b_1) & c^*_2(b_2) & \dots & c^*_2(b_n) \\\\
\vdots & \vdots & \vdots & \vdots \\\\
c^*_n(b_1) & c^*_n(b_2) & \dots & c^*_n(b_n)
\end{pmatrix}$$ berechnen.

Um nun noch $D_{BC}(Id)$ zu bestimmen, kann man entweder $D_{CB}(Id)$ invertieren oder den Prozess mit den Linearfaktoren wiederholen.

## Abbildungsformel

Man kann auch eine lineare Abbildung als arithmetischen Ausdruck ohne explizite Abbildungsmatrix betrachten, auch wenn der Ausdruck eigentlich Äquivalent zu Matrixmultiplikation ist und am Ende immer noch $\Phi(c_j)$ also $D_{CC}(\Phi) \cdot c_j$ genutzt wird.

Sei $\Phi:V \rightarrow W$ wieder eine lineare Abbildung und $B$, $C$ zwei geordnete Basen wobei, $B$ Basis von $V$ und $C$ Basis von $W$ ist.

$v \in V:$ $$\Phi_{CB}(v)=\Phi(\sum_{i=0}^p b^*_i(v) \cdot b_i)
=\sum_{i=0}^p b^*_i(v) \cdot \Phi(b_i)
=\sum_{i=0}^p b^*_i(v) \cdot \sum_{j=0}^qc^*_j(b_i) \cdot \Phi(c_j)$$

