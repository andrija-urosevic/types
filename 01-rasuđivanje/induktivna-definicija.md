# Induktivna definicija

*Induktivna definicija* uključuje kolekciju [pravila zaključivanja](pravila-zaključivanja.md). 

## Primer

Induktivna definicija binarnog stabla:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{empty\,tree}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$l\,\mathsf{tree}$}
\AxiomC{$r\,\mathsf{tree}$}
\BinaryInfC{$\mathsf{node}(l;r)\,\mathsf{tree}$}
\end{prooftree}
$$
