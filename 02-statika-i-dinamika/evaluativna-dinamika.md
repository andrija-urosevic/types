# Evaluativna dinamika

*Evaluativna dinamika* se sastoji od [induktivne definicije](induktivna-definicija.md) evaluativnog [rasuđivanja](rasuđivanja.md) $e \Downarrow v$ koje tvrdi da se zatvoren izraz $e$ evaluira u vrednost $v$.

### Primer

Evaluativna dinamika [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{num}[n] \Downarrow \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{str}[s] \Downarrow \mathsf{str}[s]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \Downarrow \mathsf{num}[n_1]$}
\AxiomC{$e_2 \Downarrow \mathsf{num}[n_2]$}
\AxiomC{$n_1 + n_2\ \mathsf{is}\ n\,\mathsf{nat}$}
\TrinaryInfC{$\mathsf{plus}(e_1;e_2) \Downarrow \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \Downarrow \mathsf{str}[s_1]$}
\AxiomC{$e_2 \Downarrow \mathsf{str}[s_2]$}
\AxiomC{$s_1 \cdot s_2 = s\,\mathsf{str}$}
\TrinaryInfC{$\mathsf{cat}(e_1;e_2) \Downarrow \mathsf{str}[s]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e \Downarrow \mathsf{str}[s]$}
\AxiomC{$|s|\ \mathsf{is}\ n\,\mathsf{nat}$}
\BinaryInfC{$\mathsf{len}(e) \Downarrow \mathsf{nat}[n]$}
\end{prooftree}
$$
Za $\mathsf{let}$ imamo dva različita pravila u zavisnosti od toga da li koristimo prenos po imenu ili po vrednosti:
1. Po imenu:
$$
\begin{prooftree}
\AxiomC{$[e_1/x]e_2 \Downarrow v_2$}
\UnaryInfC{$\mathsf{let}(e_1;x.e_2) \Downarrow v_2$}
\end{prooftree}
$$
2. Po vrednosti:
$$
\begin{prooftree}
\AxiomC{$e_1 \Downarrow v_1$}
\AxiomC{$[v_1/x]e_2 \Downarrow v_2$}
\BinaryInfC{$\mathsf{let}(e_1;x.e_2) \Downarrow v_2$}
\end{prooftree}
$$

[[pravilo-indukcije]] za [rasuđivanje](rasuđivanja.md) $e \Downarrow v$  kaže da bi pokazali $\mathcal{P}(e \Downarrow v)$ dovoljno je pokazati:
1. $\mathcal{P}(\mathsf{num}[n] \Downarrow \mathsf{num}[n])$.
2. $\mathcal{P}(\mathsf{str}[s] \Downarrow \mathsf{str}[s])$.
3. Ako $\mathcal{P}(e_1 \Downarrow \mathsf{num}[n_1])$,  $\mathcal{P}(e_2 \Downarrow \mathsf{num}[n_2])$ i $n_1 + n_2\ \mathsf{is}\ n\,\mathsf{nat}$, onda $\mathcal{P}(\mathsf{plus}(e_1;e_2) \Downarrow \mathsf{num}[n])$.
4. Ako $\mathcal{P}(e_1 \Downarrow \mathsf{str}[s_1])$,  $\mathcal{P}(e_2 \Downarrow \mathsf{str}[s_2])$ i $s_1 \cdot s_2 = s\,\mathsf{str}$, onda $\mathcal{P}(\mathsf{cat}(e_1;e_2) \Downarrow \mathsf{str}[s])$.
5. Razlikujemo slučaj po imenu i po vrednosti:
	1. Ako $\mathcal{P}([e_1/x]e_2 \Downarrow v_2)$, onda $\mathcal{P}(\mathsf{let}(e_1; x.e_2) \Downarrow v_2)$.
	2. Ako $\mathcal{P}(e_1 \Downarrow v_1)$ i $\mathcal{P}([v_1/x]e_2 \Downarrow v_2)$, onda $\mathcal{P}(\mathsf{let}(e_1; x.e_2) \Downarrow v_2)$.

**Lema.** *Ako $e \Downarrow v$, onda $v\,\mathsf{val}$.* $\square$

