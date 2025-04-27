
[Induktivna definicija](Induktivna%20definicija.md) je *iterativna* ako premise [pravila zaključivanja](Pravila%20zaključivanja.md) uključuju prethodno definisane [rasuđivačke forme](Rasuđivanja).

## Primer

Iterativna definicija liste prirodnih brojeva:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{nil\,list}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$a\,\mathsf{nat}$}
\AxiomC{$a\,\mathsf{list}$}
\BinaryInfC{$\mathsf{cons}(a;b)\,\mathsf{list}$}
\end{prooftree}
$$