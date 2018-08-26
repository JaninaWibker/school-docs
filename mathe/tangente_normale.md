# Tangente & Normale

Tangenten und Normale gehören immer zu einem gewissen Punkt in einer Funktion.

## Tangente

Die Tangente im Punkt $P$ ist die lineare Funktion (Gerade), welche durch den Punkt $P$ geht und die gleiche Steigung hat wie $f(x)$ im Punkt $P$.

> Tangente und Normale sind immer **lineare Funktionen** und existieren in Bezug auf einen Punkt $P$ in einer Funktion $f(x)$

Die Gleichung der Tangente ist

$$t(x) = m_t \cdot x + b_t$$

Hierbei ist $m_t$ die Steigung von $f(x)$ im Punkt $P$ und $b_t$ die y-Achsenverschiebung. Man berechnet die Tangente indem man die Steigung am Punkt $P$ in $f(x)$ berechnet, einsetzt und zuletzt die neue Funktion so verschiebt, dass sie durch den Punkt $P$ geht.

Es sei ein Punkt $P(x_p|y_p)$ und eine Funktion $f(x)$, welche eine 1. Ableitung hat, gegeben, dann wäre die Tangente (mit Verschiebung)

$$t(x) = f'(x_p) \cdot (x - x_p) + f(x_p)$$

Der Unterschied zu vorher ist, dass man nun direkt sieht wie man die Verschiebung berechnet. Die Verschiebung wird berechnet indem man die Koordinaten des Punktes einsetzt, einmal $x_p$ als X-Achsenverschiebung, somit also vor dem Multiplizieren der Steigung mit $x$ von $x$ abziehen und $y_p$ (oder auch $f(x_p)$) als y-Achsenverschiebung, also nach der Multiplikation mit der Steigung.

## Normale

Die Normale ist eine lineare Funktion (Gerade), welche senkrecht durch den Punkt $P$ zur Tangente eines Punktes $P$ verläuft. Die Steigung der Normale ist der **negative Kehrwert** der Steigung der Tangente. Damit ist die Gleichung für die Normale

$$n(x) = m_n \cdot x + b_n = \dfrac{-1}{m_t} \cdot x + b_n$$

oder auch für Punkt $P(x_p|y_p)$ und Funktion $f(x)$ (1. Ableitung möglich)

$$n(x) = \dfrac{-1}{f'(x_p)} \cdot (x - x_p) + f(x_p)$$
