
*Izvođenje* [rasuđivanja](Rasuđivanja) je konačna kompozicija [pravila zaključivanja](Pravila%20zaključivanja.md), koja počinju [aksiomama](Pravila%20zaključivanja.md) i završavaju se traženim [rasuđivanjem](Rasuđivanja). [Rasuđivanje](Rasuđivanja) je *izvodljivo* ako postoji odgovarajuće izvođenje.

Često predstavljamo izvođenje rasuđivanja kao stablo čiji su unutrašnji čvorovi [pravila zaključivanja](Pravila%20zaključivanja.md), listovi [aksiome](Pravila%20zaključivanja.md) i koren traženo [rasuđivanje](Rasuđivanja).

Ako je 
$$
\begin{prooftree}
\AxiomC{$J_1$}
\AxiomC{$\ldots$}
\AxiomC{$J_k$}
\TrinaryInfC{$J$}
\end{prooftree}
$$
[pravilo zaključivanja](Pravila%20zaključivanja.md) i $\nabla_1, \ldots, \nabla_k$ izvođenja njegovih [premisa](Pravila%20zaključivanja.md), onda je
$$
\begin{prooftree}
\AxiomC{$\nabla_1$}
\AxiomC{$\nabla_2$}
\AxiomC{$\ldots$}
\AxiomC{$\nabla_k$}
\QuaternaryInfC{$J$}
\end{prooftree}
$$
izvođenje njegovog [zaključka](Pravila%20zaključivanja.md).

## Konstrukcija izvođenja

Postoje dve procedure za konstruisanje izvođenja: *odozdo-naviše* i *odozgo-naniže*.

## Primer

Izvodjenje za $\mathsf{node(node(empty;empty);empty)\,tree}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{empty\,tree}$} 
\AxiomC{}
\UnaryInfC{$\mathsf{empty\,tree}$}
\BinaryInfC{$\mathsf{node(empty;empty)\,tree}$}
\AxiomC{}
\UnaryInfC{$\mathsf{empty\,tree}$}
\BinaryInfC{$\mathsf{node(node(empty;empty);empty)\,tree}$}
\end{prooftree}
$$