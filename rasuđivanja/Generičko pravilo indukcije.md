
Princip *generičkog pravila indukcije* je princip [pravila indukcije](Pravilo%20indukcije.md) primenjeno na [formalno generičko rasuđivanje](Generička%20induktivna%20definicija.md). Da bi pokazati da $\mathcal{P}(\mathcal{Y}\,|\,\Gamma \vdash J)$, kada $\mathcal{Y}\,|\,\Gamma \vdash_{\mathcal{R}} J$ ($\mathcal{Y}\,|\,\Gamma \vdash J$ je [izvodljivo]() iz $\mathcal{R}$), dovoljno je pokazati da je $\mathcal{P}$ zatvoreno za sva [pravila](Pravila%20zaključivanja) [generičke induktivne definicije](Generička%20induktivna%20definicija.md) $\mathcal{R}$, odnosno
$$
\text{ako}\;\mathcal{P}(\mathcal{Y\,Y}_1\,|\,\Gamma\,\Gamma_1 \vdash J_1)\;\text{i}\;\ldots\;\text{i}\;\mathcal{P}(\mathcal{Y\,Y}_n\,|\,\Gamma\,\Gamma_n \vdash J_n)\;\text{onda}\;\mathcal{P}(\mathcal{Y}\,|\,\Gamma \vdash J).
$$
Da bi se [pravila](Pravila%20zaključivanja) $\mathcal{R}$ ponašala kao [generička rasuđivanja](Opšta%20rasuđivanja.md) potrebno je poštuju sledeća [pravila](Pravila%20zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathcal{Y}\,|\,\Gamma, J \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y}\,|\,\Gamma \vdash J$}
\UnaryInfC{$\mathcal{Y}\,|\,\Gamma, J' \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y}\,|\,\Gamma \vdash J$}
\UnaryInfC{$\mathcal{Y},x\,|\,\Gamma \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y},x'\,|\,[x \leftrightarrow x']\Gamma \vdash [x \leftrightarrow x']J$}
\UnaryInfC{$\mathcal{Y},x\,|\,\Gamma \vdash J$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y}\,|\,\Gamma \vdash J$}
\AxiomC{$\mathcal{Y}\,|\,\Gamma, J \vdash J'$}
\BinaryInfC{$\mathcal{Y}\,|\,\Gamma \vdash J'$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathcal{Y},x\,|\,\Gamma \vdash J$}
\AxiomC{$a \in \mathcal{B}[\mathcal{Y}]$}
\BinaryInfC{$\mathcal{Y}\,|\,[a/x]\Gamma \vdash [a/x]J$}
\end{prooftree}
$$
