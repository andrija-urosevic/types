# Definisanje funkcija

Možemo koristiti [induktivne definicije](induktivna-definicija.md) da bi definisali *funkcije* koje predstavljaju *usmereni graf* čije grane vezuju ulaz sa izlazom, a nakon toga pokazati da za svaki ulaz postoji jedinstveni izlaz.

## Primer

Funkcija sabiranja prirodnih brojeva:
$$
\begin{prooftree}
\AxiomC{$b\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{sum}(\mathsf{zero};b;b)$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\mathsf{sum}(a;b;c)$}
\UnaryInfC{$\mathsf{sum}(\mathsf{succ}(a); b; \mathsf{succ}(c))$}
\end{prooftree}
$$
**Teorema 1.** *Za svaki $a\,\mathsf{nat}$ i $b\,\mathsf{nat}$, postoji jedinstveni $c\,\mathsf{nat}$ tako da $\mathsf{sum}(a;b;c)$*.

**Dokaz:** 
1. (Postojanje) Ako $a\,\mathsf{nat}$ i $b\,\mathsf{nat}$ onda postoji $c\,\mathsf{nat}$ tako da $\mathsf{sum}(a;b;c)$.
2. (Jedinstvenost) Ako $\mathsf{sum}(a;b;c)$ i $\mathsf{sum}(a;b;c')$, onda $c\,\mathsf{is}\,c'$.