# Formeln

Die Kombinatorik bzw. das Zählen von Möglichkeiten hat viel mit Stochastik und Wahrscheinlichkeiten zu tun. Wenn alle Möglichkeiten die gleiche Wahrscheinlichkeit haben ist die jeweilige Wahrscheinlichkeit für jedes Ereignis $\dfrac{1}{n}$.

Man zählt die möglichen verschiedenen bzw. nicht als gleichwertig gezählten Möglichkeiten von $k$ Versuchen bei $n$ ursprünglichen Möglichkeiten. Dabei gibt es verschiedene Bedingungen die zutreffen oder nicht zutreffen können. Die Bedingungen sind:

- Wiederholung: Darf das gleiche Ergebnis mehrmals vorkommen?
- Reihenfolge: Ist die Reihenfolge der Ergebnisse relevant?

Daraus ergeben sich für alle 4 Kombinationen Formeln:

|                            | **Wiederholungen**    | **keine Wiederholungen** |
| -------------------------- | :-------------------: | :----------------------: |
| **Reihenfolge relevant**   | $n^k$                 | $\dfrac{n!}{(n-k)!}$     |
| **Reihenfolge irrelevant** | $\dfrac{n^k}{k!}$     | $\dfrac{n!}{k! \cdot (n-k)!} = \begin{pmatrix}n\\\\k\end{pmatrix}$ |

$n: \text{Anzahl Möglichkeiten}\\\\k: \text{Anzahl Versuche}$