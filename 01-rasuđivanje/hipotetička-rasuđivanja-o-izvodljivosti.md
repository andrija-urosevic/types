# Hipotetička rasuđivanja o izvodljivosti

Za datu kolekciju [pravila](pravila-zaključivanja.md) $\mathcal{R}$, definišemo [hipotetičko rasuđivanje](hipotetička-rasuđivanja.md) o *izvodljivosti*
$H_1, \ldots, H_k \vdash_{\mathcal{R}} J$, gde su $H_1, \ldots, H_k$ (*hipoteze*) i $J$ (*posledica*) osnovna [rasuđivanja](rasuđivanja.md), sa značenjem da je moguće [izvesti](izvođenja.md) $J$ proširivanjem kolekcije [pravila](pravila-zaključivanja.md) $\mathcal{R}$ [aksiomama](pravila-zaključivanja.md)
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
Kolekciju hipoteza $H_1, \ldots, H_k$ često obeležavamo i sa $\Gamma$ ili $\Delta$, a sa $\mathcal{R}\cup\Gamma$ obeležavamo proširenu kolekciju [pravila](pravila-zaključivanja.md) $\mathcal{R}$ sa odgovarajućim [aksiomama](pravila-zaključivanja.md) hipoteza iz $\Gamma$. [Rasuđivanje](rasuđivanja.md) $\Gamma \vdash_{\mathcal{R}} J$ kaže da je posledica $J$ [izvodljiva](izvođenja.md) [pravilima](pravila-zaključivanja.md) iz $\mathcal{R} \cup \Gamma$. [Rasuđivanje](rasuđivanja.md) $\vdash_{\mathcal{R}} \Gamma$ kaže da $\vdash_{\mathcal{R}} H$ za svako $H$ iz $\Gamma$. 

**Teorema (o stabilnosti).** *Ako $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma \vdash_{\mathcal{R}\cup\mathcal{R'}} J$*.
**Dokaz:** Bilo koje [izvođenje](izvođenja.md) [rasuđivanja](rasuđivanja.md) $J$ pomoću [pravila](pravila-zaključivanja.md) iz $\mathcal{R}\cup\Gamma$ je, takođe, i [izvođenje](izvođenja.md) pomoću [pravila](pravila-zaključivanja.md) iz $\mathcal{R}\cup\mathcal{R'}\cup\Gamma$, jer sva [pravila](pravila-zaključivanja.md) iz $\mathcal{R}$ pripadaju i u $\mathcal{R}\cup\mathcal{R'}$. $\square$  

### Strukturne osobine

**Teorema (o refleksivnosti).** *Važi $\Gamma, J \vdash_{\mathcal{R}} J$. $\square$*

**Teorema (o slabljenju).** *Ako  $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma, K \vdash_{\mathcal{R}} J$. $\square$*

**Teorema (o tranzitivnosti).** *Ako $\Gamma, K \vdash_{\mathcal{R}} J$ i $\Gamma \vdash_{\mathcal{R}} K$, onda $\Gamma \vdash_{\mathcal{R}} J$. $\square$*

### Primer

Za dato [pravilo zaključivanja](pravila-zaključivanja.md)
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
Ovo [hipotetičko rasuđivanje](hipotetička-rasuđivanja.md) o izvodljivosti je valjana kako kompozicijom [pravila](pravila-zaključivanja.md) $\mathsf{succ}_{\mathsf{nat}}$ i zajedno sa hipotezom $a\,\mathsf{nat}$ dobijamo sledeće [izvođenje](izvođenja.md)
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$a\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(a)\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(\mathsf{succ}(a))\,\mathsf{nat}$}
\end{prooftree}
$$