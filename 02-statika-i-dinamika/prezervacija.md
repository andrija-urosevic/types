# Prezervacija

Svojstvo *prezervacije* tvrdi da koraci pri evaluaciji čuvaju tip.

### Primer

Za [jezik prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ svojstvo *prezervacije*:

**Teorema (o prezervaciji).**  *Ako $e : \tau$ i $e \mapsto e'$, onda $e' : \tau$.*

**Dokaz:** Izvodimo dokaz po slučajevima:
1. Za pravilo $$
\begin{prooftree}
\AxiomC{$e_1 \mapsto e_1'$}
\UnaryInfC{$\mathsf{plus}(e_1;e_2) \mapsto \mathsf{plus}(e_1';e_2)$}
\end{prooftree}
$$ Pretpostavimo da je $\mathsf{plus}(e_1;e_2) : \tau$. Po [inverziji tipova](jezik-prostih-izraza.md), imamo da je $\tau = \mathsf{num}$, $e_1 : \mathsf{num}$ i $e_2 : \mathsf{num}$. Indukcijom, imamo da $e_1' : \mathsf{num}$, te je i $\mathsf{plus}(e_1';e_2) : \mathsf{num}$.  
2. Za pravilo $$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{let}(e_1; x.e_2) \mapsto [e_1/x]e_2$}
\end{prooftree}
$$ Pretpostavimo da je $\mathsf{let}(e_1; x.e_2) : \tau$. Po [teoremi o inverziji](jezik-prostih-izraza.md), imamo da je $e_1 : \tau_1$ za neko $\tau_1$ tako da $x : \tau_1 \vdash e_2 : \tau_2$.  Po [lemi o supstituciji](jezik-prostih-izraza.md) $[e_1/x]e_2 : \tau_2$.
Slično za ostale slučajeve.
