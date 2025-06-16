# Hipotetička induktivna definicija

*Hipotetička induktivna definicija* predstavlja kolekciju [pravila](pravila-zaključivanja.md) oblika:
$$
\begin{prooftree}
\AxiomC{$\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$\Gamma \vdash J$}
\end{prooftree}\,.
$$
Kolekciju $\Gamma$ čine *globalne hipoteze*, dok kolekciju $\Gamma_i$ čine *lokalne hipoteze* $i$-te [premise](pravila-zaključivanja.md). Oznaka $\vdash$ predstavlja [hipotetičko rasuđivanje o izvodljivosti](hipotetička-rasuđivanja-o-izvodljivosti.md). 

Za [pravila](pravila-zaključivanja.md) hipotetičke induktivne definicije zahtevamo da su [uniforma](uniformna-pravila-zaključivanja.md). Time dobijamo da [pravila](pravila-zaključivanja.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$
Hipotetička induktivna definicija se može posmatrati kao obična [induktivna definicija](induktivna-definicija.md) čija pravila sadrže zaključak oblika $\Gamma \vdash J$, koji još nazivamo i *formalno hipotetičko rasuđivanje*. 
