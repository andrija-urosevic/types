
Princip *hipotetičkog pravila indukcije* je princip [pravila indukcije](Pravilo%20indukcije.md) primenjeno na [formalno hipotetičko rasuđivanje](Hipotetička%20induktivna%20definicija.md). Da bi pokazli da $\mathcal{P}(\Gamma \vdash J)$, kada $\Gamma \vdash_{\mathcal{R}} J$ ($\Gamma \vdash J$ je [izvodljivo](Hipotetička%20rasuđivanja%20o%20izvodljivosti.md) iz $\mathcal{R}$), dovoljno je pokazati da je $\mathcal{P}$ zatvoreno za sva [pravila](Pravila%20zaključivanja) [hipotetičke induktivne definicije](Hipotetička%20induktivna%20definicija.md) $\mathcal{R}$, odnosno
$$
\text{ako}\;\mathcal{P}(\Gamma\,\Gamma_1 \vdash J_1)\;\text{i}\;\ldots\;\text{i}\;\mathcal{P}(\Gamma\,\Gamma_n \vdash J_n)\;\text{onda}\;\mathcal{P}(\Gamma \vdash J).
$$
Da bi se [pravila](Pravila%20zaključivanja) $\mathcal{R}$ ponašala kao [hipotetička rasuđivanja](Hipotetička%20rasuđivanja.md) potrebno je poštuju sledeća [pravila](Pravila%20zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma, J \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash J$}
\UnaryInfC{$\Gamma, K \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash K$}
\AxiomC{$\Gamma, K \vdash J$}
\BinaryInfC{$\Gamma \vdash J$}
\end{prooftree}
$$
