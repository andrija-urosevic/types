
*Pravila zaključivanja* su pravila oblika
$$
\begin{prooftree}
  \AxiomC{$J_1$}
  \AxiomC{$J_2$}
  \AxiomC{$\ldots$}
  \AxiomC{$J_k$}
  \QuaternaryInfC{$J$}
\end{prooftree}
$$
gde su $J_1, J_2, \ldots, J_k$ [rasuđivanja](Rasuđivanja.md) koja nazivamo *premise*, a $J$ [rasuđivanje](Rasuđivanja.md) koje nazivamo *zaključak*.

Ako pravilo nema ni jednu premisu, onda se ono naziva *aksiom*.

Ukoliko želimo da pokažemo da važi [rasuđivanje](Rasuđivanja.md) $J$, dovoljno je pokazati da važe premise $J_1, J_2, \ldots, J_k$ odgovarajućeg pravila zaključivanja u kome je $J$ zaključak.

## Šablonska pravila zaključivanja

Kako može nastati potreba za beskonačno mnogo pravila zaključivanja, beskonačnu familiju pravila zaključivanja zadajemo preko *šablonskih pravila zaključivanja*. Umesto konkretnih instanci koristimo uopštena [apstraktna drveta vezivanja](Apstraktno%20drvo%20vezivanja.md) $a_1, a_2, \ldots, a_n$. Konkretna pravila dobijamo tako što uopštenja zamenimo konkretnim instancama.

## Izvođenje rasuđivanja

[Rasuđivačka forma](Rasuđivanja.md) $J$ je *zatvorena* nad skupom pravila ako postoji način da se dobije pomoću tih pravila. 

## Primer

Aksiom čiji zaključak tvrdi da je nula prirodan broj:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{zero}\,\mathsf{nat}$}
\end{prooftree}
$$

Šablonsko pravilo zaključivanja koje tvrdi da po pretpostavkom da je $a$ prirodan broj, onda je i njegov sledbenik prirodan broj (za razne instance $a$ imamo razna pravila zaključivanja):
$$
\begin{prooftree}
\AxiomC{$a\,\mathsf{nat}$}
\UnaryInfC{$\mathsf{succ}(a)\,\mathsf{nat}$}
\end{prooftree}
$$
Sledeća pravila opisuju jednakosti između prirodnih brojeva. 
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{zero}$ $\mathsf{is}$ $\mathsf{zero}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$a$ $\mathsf{is}$ $b$}
\UnaryInfC{$\mathsf{succ}(a)$ $\mathsf{is}$ $\mathsf{succ}(b)$}
\end{prooftree}
$$
