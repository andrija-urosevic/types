# Parametarska induktivna definicija

*Parametarska induktivna definicija* kolekciju predstavlja [pravila](pravila-zaključivanja.md) oblika:
$$
\begin{prooftree}
\AxiomC{$\mathcal{V\,V_1}\,||\,\mathcal{Y\,Y_1}\,|\,\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{V\,V_n}\,||\,\mathcal{Y\,Y_n}\,|\,\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$\mathcal{V}\,||\,\mathcal{Y}\,|\,\Gamma \vdash J$}
\end{prooftree}\,.
$$
[Simbole](simboli.md) $\mathcal{V}$ nazivamo *globalni simboli*, dok su $\mathcal{V}_i$ *lokalni simobli* $i$-te [premise](pravila-zaključivanja.md), [promenljive](promenljive.md) $\mathcal{Y}$ nazivamo *globalne promenljive*, dok su $\mathcal{Y}_i$ *lokalne promenljive* $i$-te [premise](pravila-zaključivanja.md), $\Gamma$ su *globlane hipoteze*, dok su $\Gamma_i$ *lokalne hipoteze* $i$-te [premise](pravila-zaključivanja.md).

Za [pravila](pravila-zaključivanja.md) generičke induktivne definicije zahtevamo da su [uniforma](uniformna-pravila-zaključivanja.md). Time dobijamo da [pravila](pravila-zaključivanja.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\mathcal{V}_1\,||\,\mathcal{Y}_1\,|\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{V}_n\,||\,\mathcal{Y}_n\,|\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$

Parametarska induktivna definicija se može posmatrati kao obična [induktivna definicija](induktivna-definicija.md) čija [pravila](pravila-zaključivanja.md) sadrže [zaključak](pravila-zaključivanja.md) oblika $\mathcal{V}\,||\,\mathcal{Y}\,|\,\Gamma \vdash J$, koji još nazivamo i *formalno parametarsko rasuđivanje*. 
