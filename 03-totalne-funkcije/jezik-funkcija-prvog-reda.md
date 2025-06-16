
*Jezik funkcija prvog reda* $\mathbf{ED}$ proširuje [jezik prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ *definicijom funkcije* i *primenom funkcije*.

[Sintaksnu tabelu](sintaksna-tabela.md) jezika funkcija prvog reda $\mathbf{ED}$ nadograđujemo nad [sintaksnom tabelom](sintaksna-tabela.md) [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ sa:
$$
\begin{split}
\mathsf{Exp}\ e ::=\ &\mathsf{apply}\{f\}(e)\ &f(e)\ &\text{application}\\
					 &\mathsf{fun}\{\tau_1;\tau_2\}(x_1.e_2; f.e)\quad &\mathsf{fun} f(x_1 : \tau_1) : \tau_2 = e_2\ \mathsf{in}\ e\ &\text{definition}
\end{split}
$$
Izraz $\mathsf{fun}\{\tau_1; \tau_2\}(x_1.e_2; f.e)$ vezuje ime funkcije $f$ unutar $e$ za šablon $x_1.e_2$, koji ima *argument* $x_1$ i *definiciju* $e_2$. *Domen* i *kodomen* funkcija su, respektivno, tipovi $\tau_1$ i $\tau_2$. Izraz $\mathsf{apply}\{f\}(e)$ instancira vezivanje $f$ sa argumentom $e$.

[Statika](statičko-procesiranje.md) jezika funkcija prvog reda $\mathbf{ED}$ definiše dve vrste [rasuđivanja](rasuđivanja.md):
1. *Tip izraza*, $e : \tau$, koji tvrdi da je izraz $e$ tipa $\tau$.
2. *Tip funkcije*, $f(\tau_1) : \tau_2$, koji tvrdi da funkcija $f$ ima kao argument izraz tipa $\tau_1$ i kao razultat izraz tipa $\tau_2$. 

[Statika](statičko-procesiranje.md) za jezika funkcija prvog reda $\mathbf{ED}$:
$$
\begin{prooftree}
\AxiomC{$\Gamma, x_1 : \tau_1 \vdash e_2 : \tau_2$}
\AxiomC{$\Gamma, f(\tau_1) : \tau_2 \vdash e : \tau$}
\BinaryInfC{$\Gamma \vdash \mathsf{fun}\{\tau_1; \tau_2\}(x_1.e_2; f.e) : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash f(\tau_1) : \tau_2$}
\AxiomC{$\Gamma \vdash e : \tau_2$}
\BinaryInfC{$\Gamma \vdash \mathsf{apply}\{f\}(e) : \tau_2$}
\end{prooftree}
$$
*Zamena funkcije* se definiše preko [pravila](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$[|x.e/f|]\mathsf{apply}\{f\}(e') = \mathsf{let}([|x.e/f|]e';x.e)$}
\end{prooftree}
$$

[Dinamika](strukturna-dinamika.md) za jezik funkcija prvog reda $\mathbf{ED}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{fun} \{\tau_1; \tau_2\} (x_1.e_2; f.e) \mapsto [|x_1.e_2/f|]e$}
\end{prooftree}
$$

### Osobine

**Lema.** *Ako $\Gamma, f(\tau_1) : \tau_2 \vdash e : \tau$ i $\Gamma, x_1 : \tau_1 \vdash e_2 : \tau_2$, onda $\Gamma \vdash [|x_1.e_2/f|]e : \tau$.* $\square$
