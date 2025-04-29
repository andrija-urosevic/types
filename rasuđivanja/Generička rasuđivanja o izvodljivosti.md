
*Generičko rasuđivanje o izvodljivosti* definišemo kao
$$
\mathcal{Y}\,|\,\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}J\;\text{iff}\;\Gamma\vdash_{\mathcal{R}}^{\mathcal{X\,Y}}J,
$$
gde $\mathcal{Y}\cap\mathcal{X}=\emptyset$, $\mathcal{X}\,\mathcal{Y}$ predstavljaju kolekciju [promenljivih](Promenljive) iz $\mathcal{X}$ i iz $\mathcal{Y}$, i gde je $\vdash_{\mathcal{R}}^{\mathcal{X}}$ oznaka za [generičko rasuđivanje](Opšta%20rasuđivanja.md). *Generičko izvođenje* $\nabla$ uključuje [promenljive](Promenljive) iz $\mathcal{X\,Y}$ i svedoči o generičkom rasuđivanju o izvodljivosti. Pod uslovom da su [pravila](Pravila%20zaključivanja.md) [uniformna](Uniformna%20pravila%20zaključivanja.md) izbor [promeljivih](Promenljive) iz $\mathcal{Y}$ nije bitan.

### Strukturne osobine

Pod uslovom da su [pravila](Pravila%20zaključivanja.md) [uniformna](Uniformna%20pravila%20zaključivanja.md) važe sledeće *strukturne osobine*:

**Teorema (o proširenju).** *Ako $\mathcal{Y}\,|\,\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}J$, onda $\mathcal{Y,y}\,|\,\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}J$.* $\square$
**Teorema (o preimenovanju).** *Ako $\mathcal{Y,y}\,|\,\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}J$, onda  $\mathcal{Y,y'}\,|\,[y \leftrightarrow y']\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}[y \leftrightarrow y']J$ za bilo koje $y' \notin \mathcal{X\,Y}$.* $\square$
**Teorema (o zameni).** *Ako $\mathcal{Y,y}\,|\,\Gamma\vdash_{\mathcal{R}}^{\mathcal{X}}J$ i $a \in \mathcal{B}[\mathcal{X\,Y}]$, onda $\mathcal{Y}\,|\,[a/y]\Gamma \vdash_{\mathcal{R}}^{\mathcal{X}} [a/y]J$.* $\square$ 

### Primer

Generičko izvođenje
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$x\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(x)\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(\mathsf{succ}(x))\,\mathsf{nat}$}
\end{prooftree}
$$
predstavlja svedoka za generičko rasuđivanje o izvodljivosti
$$
x\,|\,x\,\mathsf{nat}\vdash_{\mathsf{succ}_{\mathsf{nat}}}^{\mathcal{X}}\mathsf{succ}(\mathsf{succ}(x))\,\mathsf{nat}
$$
pod uslovom da $x \notin \mathcal{X}$. Kako je $\mathsf{succ}_{\mathsf{nat}}$ [uniformno pravilo](Uniformna%20pravila%20zaključivanja.md) bilo koji drugi izbor za promenljuvu $x$ koji se ne sadrži u $\mathcal{X}$ je odgovarajući.