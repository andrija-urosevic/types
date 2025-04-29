
*Hipotetička induktivna definicija* predstavlja kolekciju [pravila](Pravila%20zaključivanja.md) oblika:
$$
\begin{prooftree}
\AxiomC{$\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$\Gamma \vdash J$}
\end{prooftree}\,.
$$
Kolekciju $\Gamma$ čine *globalne hipoteze*, dok kolekciju $\Gamma_i$ čine *lokalne hipoteze* $i$-te [premise](Pravila%20zaključivanja.md). Oznaka $\vdash$ predstavlja [hipotetičko rasuđivanje o izvodljivosti](Hipotetička%20rasuđivanja%20o%20izvodljivosti.md). 

Za [pravila](Pravila%20zaključivanja.md) hipotetičke induktivne definicije zahtevamo da su [uniforma](Uniformna%20pravila%20zaključivanja.md). Time dobijamo da [pravila](Pravila%20zaključivanja.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$
Hipotetička induktivna definicija se može posmatrati kao obična [induktivna definicija](Induktivna%20definicija.md) čija pravila sadrže zaključak oblika $\Gamma \vdash J$, koji još nazivamo i *formalno hipotetičko rasuđivanje*. 
