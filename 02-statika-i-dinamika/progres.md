# Progres

Svojstvo o *progresu* karakteriše ideju da se dobro tipzirani program ne može zaglaviti.

Svojstvo progresa [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$.

**Lema (o kanoničnoj formi).** Ako $e\,\mathsf{val}$ i $e : \tau$, onda
1. Ako $\tau = \mathsf{num}$, onda $e = \mathsf{num}[n]$ za neki broj $n$.
2. Ako $\tau = \mathsf{str}$, onda $e = \mathsf{str}[s]$ za neki string $s$.

**Dokaz:** Indukcijom na pravila [statike](statičko-procesiranje.md) i [dinamike](dinamičko-procesiranje.md). 

**Teorema (o progresu).** Ako $e : \tau$, onda ili $e\,\mathsf{val}$ ili postoji $e'$ tako da $e \mapsto e'$.

**Dokaz:** Indukcijom po izvuđenju tipova. Razmotrićemo samo slučaj:
$$
\begin{prooftree}
\AxiomC{$e_1 : \mathsf{num}$}
\AxiomC{$e_2 : \mathsf{num}$}
\BinaryInfC{$\mathsf{plus}(e_1;e_2) : \mathsf{num}$}
\end{prooftree}
$$Indukcijom imamo ili $e_1\,\mathsf{val}$ ili postoji $e_1'$ tako da $e_1 \mapsto e_1'$. U drugom slučaju, sledi da $\mathsf{plus}(e_1;e_2) \mapsto \mathsf{plus}(e_1';e_2)$. U prvom slučaju, indukcijom imamo da je ili $e_2\,\mathsf{val}$ ili postoji $e_2'$ tako da $e_2 \mapsto e_2'$. Kod drugog slučaja imamo da je $\mathsf{plus}(e_1;e_2) \mapsto \mathsf{plus}(e_1;e_2')$. Dok u prvom slučaju, po lemi o kanoničnoj formil, imamo da iz $e_1 = \mathsf{num}[n_1]$ i $e_2 = \mathsf{num}[n_2]$ sledi $$\mathsf{plus}(\mathsf{num}[n_1];\mathsf{num}[n_2]) \mapsto \mathsf{num}[n_1 + n_2].$$
$\square$
