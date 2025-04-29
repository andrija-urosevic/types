
[Pravila](Pravila%20zaključivanja.md) [hipotetičke induktivne definicije](Hipotetička%20induktivna%20definicija.md) zahtvamo da budu *uniforma*, odnosno da su primenljiva na sve moguće [globalne hipoteze](Hipotetička%20induktivna%20definicija.md). Time dobijamo da [pravila](Pravila%20zaključivanja.md) [hipotetičke induktivne definicije](Hipotetička%20induktivna%20definicija.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$
[Pravila](Pravila%20zaključivanja.md) [generičke induktivne definicije](Generička%20induktivna%20definicija.md), takođe, zahtevamo da budu *uniformna*, odnosno da su primenljiva na sve moguće [globalne hipoteze](Hipotetička%20induktivna%20definicija.md), kao i da su *zatvorena za preimenovanje i supstituciju* [promenljivih](Promenljive). Preciznije, ako je $\mathcal{R}$ skup [pravila](Pravila%20zaključivanja.md) koja sadrže [slobodne promenljive](Promenljive) $x$ [sorte](Sorta) $s$, onda moraju sadržati sve moguće [zamene](Zamene) [instance](Instance) $a$ [sorte](Sorta) $s$ za $x$, uključujući i one koje sadrže i druge [slobodne promenljive](Promenljive). Time dobijemo da [pravila](Pravila%20zaključivanja.md) [generičke induktivne definicije](Generička%20induktivna%20definicija.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y\,Y_1}\,|\,\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{Y\,Y_n}\,|\,\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}.
$$
