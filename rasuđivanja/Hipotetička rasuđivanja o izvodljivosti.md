
Za datu kolekciju [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$, definišemo [hipotetičko rasuđivanje](Hipotetička%20rasuđivanja.md) o *izvodljivosti*
$H_1, \ldots, H_k \vdash_{\mathcal{R}} J$, gde su $H_1, \ldots, H_k$ (*hipoteze*) i $J$ (*posledica*) osnovna [rasuđivanja](Rasuđivanja.md), sa značenjem da je moguće [izvesti](Izvođenja.md) $J$ proširivanjem kolekcije [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$ [aksiomama](Pravila%20zaključivanja.md)
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$H_1$}
\end{prooftree}
\,
\ldots
\,
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$H_k$}
\end{prooftree}.
$$
Kolekciju hipoteza $H_1, \ldots, H_k$ često obeležavamo i sa $\Gamma$ ili $\Delta$, a sa $\mathcal{R}\cup\Gamma$ obeležavamo proširenu kolekciju [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$ sa odgovarajućim [aksiomama](Pravila%20zaključivanja.md) hipoteza iz $\Gamma$. [Rasuđivanje](Rasuđivanja.md) $\Gamma \vdash_{\mathcal{R}} J$ kaže da je posledica $J$ [izvodljiva](Izvođenja.md) [pravilima](Pravila%20zaključivanja.md) iz $\mathcal{R} \cup \Gamma$. [Rasuđivanje](Rasuđivanja.md) $\vdash_{\mathcal{R}} \Gamma$ kaže da $\vdash_{\mathcal{R}} H$ za svako $H$ iz $\Gamma$. 

**Teorema (o stabilnosti).** *Ako $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma \vdash_{\mathcal{R}\cup\mathcal{R'}} J$*.
**Dokaz:** Bilo koje [izvođenje](Izvođenja.md) [rasuđivanja](Rasuđivanja.md) $J$ pomoću [pravila](Pravila%20zaključivanja.md) iz $\mathcal{R}\cup\Gamma$ je, takođe, i [izvođenje](Izvođenja.md) pomoću [pravila](Pravila%20zaključivanja.md) iz $\mathcal{R}\cup\mathcal{R'}\cup\Gamma$, jer sva [pravila](Pravila%20zaključivanja.md) iz $\mathcal{R}$ pripadaju i u $\mathcal{R}\cup\mathcal{R'}$. $\square$  

### Strukturne osobine

**Teorema (o refleksivnosti).** *Važi $\Gamma, J \vdash_{\mathcal{R}} J$. $\square$*
**Teorema (o slabljenju).** *Ako  $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma, K \vdash_{\mathcal{R}} J$. $\square$*
**Teorema (o tranzitivnosti).** *Ako $\Gamma, K \vdash_{\mathcal{R}} J$ i $\Gamma \vdash_{\mathcal{R}} K$, onda $\Gamma \vdash_{\mathcal{R}} J$. $\square$*

### Primer

Za dato [pravilo zaključivanja](Pravila%20zaključivanja.md)
$$
\begin{prooftree}[\mathsf{succ}_{\mathsf{nat}}]
\AxiomC{$a\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(a)\,\mathsf{nat}$}
\end{prooftree}
$$
razmotrimo sledeće rasuđivanje o izvodljivosti
$$
a\,\mathsf{nat} \vdash_{\mathsf{succ}_{\mathsf{nat}}} \mathsf{succ}(\mathsf{succ}(a))\,\mathsf{nat}.
$$
Ovo [hipotetičko rasuđivanje](Hipotetička%20rasuđivanja.md) o izvodljivosti je valjana kako kompozicijom [pravila](Pravila%20zaključivanja.md) $\mathsf{succ}_{\mathsf{nat}}$ i zajedno sa hipotezom $a\,\mathsf{nat}$ dobijamo sledeće [izvođenje](Izvođenja.md)
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$a\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(a)\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(\mathsf{succ}(a))\,\mathsf{nat}$}
\end{prooftree}
$$