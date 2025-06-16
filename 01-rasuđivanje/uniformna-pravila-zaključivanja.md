# Uniformna pravila zaključivanja

[Pravila](pravila-zaključivanja.md) [hipotetičke induktivne definicije](hipotetička-induktivna-definicija.md) zahtvamo da budu *uniforma*, odnosno da su primenljiva na sve moguće [globalne hipoteze](hipotetička-induktivna-definicija.md). Time dobijamo da [pravila](pravila-zaključivanja.md) [hipotetičke induktivne definicije](hipotetička-induktivna-definicija.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}\,.
$$
[Pravila](pravila-zaključivanja.md) [generičke induktivne definicije](generička-induktivna-definicija.md), takođe, zahtevamo da budu *uniformna*, odnosno da su primenljiva na sve moguće [globalne hipoteze](hipotetička-induktivna-definicija.md), kao i da su *zatvorena za preimenovanje i supstituciju* [promenljivih](promenljive.md). Preciznije, ako je $\mathcal{R}$ skup [pravila](pravila-zaključivanja.md) koja sadrže [slobodne promenljive](promenljive.md) $x$ [sorte](sorta.md) $s$, onda moraju sadržati sve moguće [zamene](zamene.md) [instance](instance.md) $a$ [sorte](sorta.md) $s$ za $x$, uključujući i one koje sadrže i druge [slobodne promenljive](promenljive.md). Time dobijemo da [pravila](pravila-zaključivanja.md) [generičke induktivne definicije](generička-induktivna-definicija.md) možemo predstaviti u njegovoj *implicitnoj* ili *lokalnoj formi*
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y\,Y_1}\,|\,\Gamma\,\Gamma_1 \vdash J_1$}
\AxiomC{$\ldots$}
\AxiomC{$\mathcal{Y\,Y_n}\,|\,\Gamma\,\Gamma_n \vdash J_n$}
\TrinaryInfC{$J$}
\end{prooftree}.
$$
