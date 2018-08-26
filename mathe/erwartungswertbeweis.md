# Erwartungswertbeweis

Der Erwartungswert für Binomialverteilte Zufallsgrößen ist $E(X) = n \cdot p$. Der Beweis hierfür beruht auf dem *Pascal Dreieck*, dem *Binomischen Lehrsatz* und *Summen Index Transformation*

$E(X)$

$\displaystyle{= \sum_{k=0}^{n} k \cdot \Big({n \atop k}\Big) \cdot p^k \cdot q^{n-k}}$

$\displaystyle{= \sum_{k=1}^{n} k \cdot \dfrac{n!}{k! \cdot (n-k)!} \cdot p^k \cdot q^{n-k}}$

> die erste Iteration ist immer $0$, weil man dabei $k=0$ hat, daher kann man dann bei $k=1$ starten.

$\displaystyle{= \sum_{k=1}^{n}  \dfrac{n!}{(k-1)! \cdot (n-k)!} \cdot p^{k-1} \cdot p\cdot q^{n-k}}$

> das $k$ in den Bruch stellen & ein $p$ von $p^k$ herausstellen

$\displaystyle{= \sum_{k=1}^{n} n \cdot \dfrac{(n-1)!}{(k-1)! \cdot (n-k)!} \cdot p^{k-1} \cdot p \cdot q^{n-k}}$

> ein $n$ aus dem Bruch nehmen und vorran stellen.

$\displaystyle{= n \cdot p \cdot \sum_{k=1}^{n} \Big({n-1 \atop k-1}\Big) \cdot p^{k-1} \cdot q^{n-k}}$

> $n \cdot p$ aus der Summe nehmen; Bruch wieder als Binomialkoeffizienten aufschreiben

Wenn die Summe $1$ ergibt, dann stimmt $E(X) = n \cdot p$

$\displaystyle{\sum_{k=1}^{n} \Big({n-1 \atop k-1}\Big) \cdot p^{k-1} \cdot q^{n-k}}$

$\displaystyle{= \sum_{k=0}^{n-1} \Big({ n-1 \atop k}\Big) \cdot p^k \cdot q^{n-k-1}}$

> Index Transformation

---

> Binomischer Lehrsatz

$\displaystyle{1 = (1)^n = (p+1-p)^n = (p+q)^n = \sum_{k=0}^{n} \Big({n \atop k}\Big) \cdot p^n \cdot q^n-k}$

für jedes $n$ gilt also, dass diese Summe **immer** $1$ ergibt. Dadurch gilt dann natürlich auch:

$\displaystyle{\sum_{k=0}^{n-1} \Big({ n-1 \atop k}\Big) \cdot p^k \cdot q^{n-1-k}} = \sum_{k=0}^{n} \Big({ n \atop k}\Big) \cdot p^k \cdot q^{n-k}$

Also gilt:

$E(X) = n \cdot p \cdot 1 = n \cdot p$
