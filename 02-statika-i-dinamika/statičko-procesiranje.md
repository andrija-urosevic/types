# Statičko procesiranje

*Statičko procesiranja* uključuje parsiranje i proveru tipova da bi se utvrdilo da je program *dobro-formiran*. Ukoliko je to slučaj uslediće [dinamičko procesiranje](dinamičko-procesiranje.md). 

Statičko procesiranje je dato *statikom* koju čine [generičke induktivne definicije](generička-induktivna-definicija.md) koja [izvode](izvođenja.md) [tipska rasuđivanja](tipska-rasuđivanja.md), odnosno [rasuđivanja](rasuđivanja.md) oblika
$$
\vec{x}\,|\,\Gamma \vdash e : \tau,
$$
gde $\vec{x}$ predstavlja konačnu kolekciju [promenljivih](promenljive.md) i $\Gamma$ je *tipski kontekst* koji za svaki $x \in \vec{x}$ sadrži hipotezu oblika $x : \tau$. Ukoliko za neku [promenljvu](promenljive.md) $x$ ne postoji hipoteza oblika $x : \tau$ u kontekstu $\Gamma$, onda kažemo da je [promenljiva](promenljive.md) $x$ *nova* za $\Gamma$.

### Primer

[Pravila](pravila-zaključivanja.md) koja definišu *statiku* za [prost jezik izraza](jezik-prostih-izraza.md) $\mathbf{E}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma, x : \tau \vdash x : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{str}[s] : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{plus}(e_1;e_2) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{times}(e_1;e_2) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{str}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{str}$}
\BinaryInfC{$\Gamma \vdash \mathsf{cat}(e_1;e_2) : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e : \mathsf{str}$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(e) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \tau_1$}
\AxiomC{$\Gamma, x:\tau_1 \vdash e_2 : \tau_2$}
\BinaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) : \mathsf{str}$}
\end{prooftree}
$$
