# Simultana induktivna definicija

[induktivna-definicija](induktivna-definicija.md) je *simultana* ako sadrži kolekciju [pravila zaključivanja](pravila-zaključivanja.md) koja izvode nekoliko drugačijih [rasuđivačkih formi](rasuđivanja.md). 

## Primer

Simultana induktivna definicija [rasuđivanja](rasuđivanja.md) $a\,\mathsf{even}$ ($a$ je parno) i $a\,\mathsf{odd}$ ($a$ je neparno):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{zero\,even}$}
\end{prooftree}
$$

$$
\begin{prooftree}
\AxiomC{$b\,\mathsf{odd}$}
\UnaryInfC{$\mathsf{succ}(b)\,\mathsf{even}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$a\,\mathsf{even}$}
\UnaryInfC{$\mathsf{succ}(a)\,\mathsf{odd}$}
\end{prooftree}
$$