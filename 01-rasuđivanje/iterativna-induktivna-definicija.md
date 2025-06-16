# Iterativna induktivna definicija

[induktivna-definicija](induktivna-definicija.md) je *iterativna* ako premise [pravila zaključivanja](pravila-zaključivanja.md) uključuju prethodno definisane [rasuđivačke forme](rasuđivanja.md).

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