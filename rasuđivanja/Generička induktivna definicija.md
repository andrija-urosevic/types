
*Generička induktivna definicija* kolekciju predstavlja [pravila](Pravila%20zaključivanja.md) oblika:
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y\,Y_1}\,|\,\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{Y\,Y_n}\,|\,\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$\mathcal{Y}\,|\,\Gamma \vdash J$}
\end{prooftree}\,.
$$
[Promenljive](Promenljive) $\mathcal{Y}$ nazivamo *globalne promenljive*, dok su $\mathcal{Y}_i$ *lokalne promenljive* $i$-te [premise](Pravila%20zaključivanja), $\Gamma$ su *globlane hipoteze*, dok su $\Gamma_i$ *lokalne hipoteze* $i$-te [premise](Pravila%20zaključivanja).

Za [pravila](Pravila%20zaključivanja.md) generičke induktivne definicije zahtevamo da su [uniforma](Uniformna%20pravila%20zaključivanja.md). Time dobijamo da [pravila](Pravila%20zaključivanja.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y}_1\,|\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{Y}_n\,|\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$

Generička induktivna definicija se može posmatrati kao obična [induktivna definicija](Induktivna%20definicija.md) čija [pravila](Pravila%20zaključivanja.md) sadrže [zaključak](Pravila%20zaključivanja.md) oblika $\mathcal{Y}\,|\,\Gamma \vdash J$, koji još nazivamo i *formalno opšte rasuđivanje*. 
