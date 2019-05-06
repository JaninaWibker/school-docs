# Projektionen

Projektionen kann man sich am einfachsten mithilfe von physikalischen Beispielen vorstellen.

**Beispiel 1**: Es gibt eine Lichtquelle, die Licht durch ein Fenster scheint auf den Boden. Es soll aus den Koordinaten bzw. Punkten des Fensters und Informationen über das Licht berechnet werden, wohin das Licht auf den Boden fällt bzw. welche Koordinaten / Punkte dies definiert.

**Beispiel 2**: Ein weiteres Beispiel könnte das Gegenteil zu dem vorherigen Beispiel sein. Man hat etwas, was das Licht blockiert und soll den Schatten bestimmen den das Licht und das Hinderniss erstellen.

> Mathematisch ist beides identisch zu betrachten.

Generell kann man 2 distinkte Formen/Arten der *Projektion* finden. Einmal die **Zentralprojektion**, welche Lichtstrahlen, definiert durch Geraden, von einem festen Punkt ausgehen lässt (daher auch "Point-light" als Beschreibung für eine solche Lichtquelle) und die **Parallelprojektion**, wobei Licht durch parallel verlaufende Geraden definiert wird, anstatt die aus dem Punkt enstehenden Geraden.

Eine mögliche Herleitung für *Parallelprojektion* ist eine *Zentralprojektion* mit einem idealen Punkt (ein unendlich weit entfernter Punkt bzw. ein Punkt in dem unendlich als Wert vorkommt), da desto weiter die Lichtquelle (der Punkt) entfernt ist, desto *"paralleler"* die Geraden werden. Im unendlichen approximieren sie parallele Geraden, daher auch die Aussage

<p style="font-size: 18px; text-align: center; font-style: italic;">"Parallel lines meet at infinity".</p>

Diese Idee wird mathematisch besser definiert im Projektionsraums $\mathbb{P}$, in dem ideale Punkte und nicht-ideale Punkte gleichwertig und problemlos miteinander behandelt werden können. Dies ist aber ein riesen Thema für sich. Dieses Thema ist fundamental für *Computer Vision*, sowie *3D Computergrafiken*.

## Berechnung

Die Berechnung beruht auf vorherigen Methoden wie *Durchstoßpunkte*, *Geradengleichungen*.

*Zunächst die Ähnlichkeiten zwischen Zentral- und Parallelprojektion*. Man hat in beiden Fällen eine Ebene $\epsilon' $ und mind. 3 Punkte gegeben. Diese Punkte liegen selber auf einer Ebene $\epsilon$. $\epsilon'$, da die gesamte Projektion eigentlich nur eine Transformation einer Ebene $\epsilon$ zu einer resultierenden Ebene $\epsilon'$ ist. Die Punkte werden auf $\epsilon'$ projeziert.

*Nun zum einzigen Unterschied*. Bei der *Zentralprojektion* hat man einen Punkt $L$ als Lichtquelle gegeben, wobei man bei der *Parallelprojektion* einen *Richtungsvektor* $\vec{v}$ gegeben hat.

Der einzige Unterschied bei der Berechnung ist also der Vorgang zum erstellen der Geraden. Der darauffolgende Prozess ist identisch.

### Zentralprojektion

$P$, $Q$, $R$ seien Punkte der Ebene $\epsilon$ die auf die Punkte $P'$, $Q'$ und $R'$ auf der Ebene $\epsilon'$ projeziert werden. Der Punkt $L$ ist die Lichtquelle. $\R^3$ wird beispielsweise genutzt, es funktioniert aber trotzdem alles in höheren Dimensionen ohne viele Veränderungen.

$g_P: \vec{x} = L + t \cdot (P - L)\newline$
$g_Q: \vec{x} = L + t \cdot (Q - L)\newline$
$g_R: \vec{x} = L + t \cdot (R - L)$

Mit den Geraden von $L$ aus durch $P$, $Q$ und $R$ müssen jetzt die *Durchstoßpunkte* mit $\epsilon'$ berechnet werden. Wenn die Ebene in Koordinatenform ist, dann muss man jeweils die Gerade $g$ nach $(x_1, x_2, x_3)^T$ umformen und dies in die Ebenengleichung einsetzten und nach dem Parameter $t$ auflösen.

$\epsilon': ax_1 + bx_2 + cx_3 = d$

$g_P \iff (L_1 + t \cdot (P_1 - L_1), L_2 + t \cdot (P_2 - L_2), L_3 + t \cdot (P_3 - L-3))^T$

$g_{P1}x_1 + g_{P2}x_2 + g_{P3}x_3 = d \implies t = t_1$

$P' = g_P(t_1)$

Wenn $\epsilon'$ in Parameterform angegeben ist muss man diese mit der Gerade gleichsetzen und die resultierenden Faktoren in g oder $\epsilon'$ einsetzen.

$\epsilon': \vec{x} = \vec{p_{\epsilon}} + r \cdot \vec{u_{\epsilon}} + s \vec{v_{\epsilon}}$

$\epsilon' = g_P \implies r = r_1, s = s_1, t = t_1$

$P' = g_P(t_1) = \epsilon'(r_1, s_1)$

### Parallelprojektion

Der einzige Unterschied zur *Zentralprojektion* ist, wie die Geraden definiert werden. Man hat den Richtungsvektor $\vec{v}$ schon gegeben, welcher für jede Gerade verwendet wird.

$g_P: \vec{x} = P + t \cdot \vec{v}$
$g_Q: \vec{x} = Q + t \cdot \vec{v}$
$g_R: \vec{x} = R + t \cdot \vec{v}$

Das gesamte weitere Verfahren ist identisch zum Verfahren bei der *Zentralprojektion*, also Einsetzen / Gleichsetzen abhängig von Form der Ebene.