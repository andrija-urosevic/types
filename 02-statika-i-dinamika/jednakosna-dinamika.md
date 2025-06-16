# Jednakosna dinamika

*Definicioni/računska ekvivalentnost* izraza [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$, koji pišemo kao $\mathcal{X}\,|\,\Gamma \vdash e \equiv e' : \tau$, gde je $\Gamma$ kolekcija pretpostavki oblika $x : \tau$ za svaki $x \in \mathcal{X}$. 

### Primer

Jednakosna dinamika [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ definišemo [induktivno](induktivna-definicija.md) sledećim grupama [pravila](pravila-zaključivanja.md):

1. Definiciona jednakost je *ekvivalencija*:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash e \equiv e : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e' \equiv e : \tau$}
\UnaryInfC{$\Gamma \vdash e \equiv e' : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e' \equiv e : \tau$}
\AxiomC{$\Gamma \vdash e' \equiv e'' : \tau$}
\BinaryInfC{$\Gamma \vdash e \equiv e'' : \tau$}
\end{prooftree}
$$
2. Definiciona jednakost je *kongruencija*:
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{plus}(e_1;e_2) \equiv \mathsf{plus}(e_1';e_2') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{times}(e_1;e_2) \equiv \mathsf{times}(e_1';e_2') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{str}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{str}$}
\BinaryInfC{$\Gamma \vdash \mathsf{cat}(e_1;e_2) \equiv \mathsf{cat}(e_1';e_2') : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e \equiv e' : \mathsf{str}$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(e) \equiv \mathsf{len}(e') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \tau_1$}
\AxiomC{$\Gamma, x : \tau_1 \vdash e_2 \equiv e_2' : \tau_2$}
\BinaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) \equiv \mathsf{let}(e_1';x.e_2') : \tau_2$}
\end{prooftree}
$$
3. Primitivne konstrukcije jezika:
$$
\begin{prooftree}
\AxiomC{$n_1 + n_2 = n$}
\UnaryInfC{$\Gamma \vdash \mathsf{plus}(\mathsf{num}[n_1];\mathsf{num}[n_2]) = \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$n_1 * n_2 = n$}
\UnaryInfC{$\Gamma \vdash \mathsf{times}(\mathsf{num}[n_1];\mathsf{num}[n_2]) = \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$s_1 \cdot s_2 = s$}
\UnaryInfC{$\Gamma \vdash \mathsf{cat}(\mathsf{str}[s_1];\mathsf{str}[s_2]) = \mathsf{str}[s] : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$|s|=l$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(\mathsf{str}[s]) = \mathsf{num}[l] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) \equiv [e_1/x]e_2 : \tau$}
\end{prooftree}
$$

**Teorema.** *Za [jezik prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$, relacija $e \equiv e' : \tau$ važi akko postoji $e_0\,\mathsf{val}$ tako da $e \mapsto^{*} e_0$ i $e' \mapsto^{*} e_0$.* $\square$