
*Pravilo induktivni* kaže da osobina $\mathcal{P}$ *poštuje* [pravilo](Pravila%20zaključivanja.md)
$$
\begin{prooftree}
\AxiomC{$a_1\,\mathsf{J}$}
\AxiomC{$\ldots$}
\AxiomC{$a_k\,\mathsf{J}$}
\TrinaryInfC{$a\,\mathsf{J}$}
\end{prooftree}
$$
ako $\mathcal{P}(a)$ (*induktivna posledica*) važi kada važe $\mathcal{P}(a_1), \ldots, \mathcal{P}(a_k)$ (*induktivne hipoteze*).

## Indukcija nad $\mathsf{nat}$ i $\mathsf{tree}$

Da bi pokazali da važi $\mathcal{P}(a)$ kada $a \,\mathsf{nat}$, dovoljno je pokazati:
1. $\mathcal{P}(\mathsf{zero})$.
2. Za svako $a$, ako $\mathcal{P}(a)$, onda $\mathcal{P}(\mathsf{succ}(a))$.
Ovi uslovi su još i poznati kao *matematička indukcija*.

Da bi pokazali da važi $\mathcal{P}(a)$ kada $a\,\mathsf{tree}$, dovoljno je pokazati:
1. $\mathcal{P}(\mathsf{empty})$.
2. Za svako $l$ i $r$, ako $\mathcal{P}(l)$ i $\mathcal{P}(r)$, onda $\mathcal{P}(\mathsf{node}(l;r))$.
Ovi uslovi su još i poznati kao *indukcija stabla*.

## Primer

**Lema 1.** *Ako $\mathsf{succ}(a)\,\mathsf{nat}$, onda $a\,\mathsf{nat}$*.
**Dokaz:** Matematičkom indukcijom po $a$:
1. $\mathsf{zero\,nat}$ važi po prvom pravilu induktivne definicije prirodnih brojeva, te važi traženo tvrđenje.
2. Po induktivnoj hipotezi važi, ako $\mathsf{succ}(a)\,\mathsf{nat}$, onda $a\,\mathsf{nat}$. Pokažimo da ako $\mathsf{succ}(\mathsf{succ}(a))\,\mathsf{nat}$, onda $\mathsf{succ}(a)\,\mathsf{nat}$.
