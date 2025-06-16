# Tranzicioni sistem

*Tranzicioni sistem* je dat sledećim oblicima [rasuđivanja](rasuđivanja.md):
1. $s\,\mathsf{state}$, $s$ je *stanje* tranzicionong sistema. 
2. $s\,\mathsf{final}$, gde je $s\,\mathsf{state}$, koje tvrdi da je $s$ *finalno stanje*.
3. $s\,\mathsf{initial}$, gde je $s\,\mathsf{state}$, koje tvrdi da je $s$ *inicijalno stanje*.
4. $s \mapsto s'$, gde je $s\,\mathsf{state}$ i $s'\,\mathsf{state}$, koje tvrdi da stanje $s$ može preći u stanje $s'$.

Ako je $s\,\mathsf{final}$, onda ne postoji $s'\,\mathsf{state}$, tako da $s \mapsto s'$. Stanje iz koga ne postoji ni jedna tranzicija zovemo *zaglavljeno stanje*. Tranzitivni sistem je *deterministički* akko za svako stanje $s$ postoji najviše jedno stanje $s'$ tako da $s \mapsto s'$, inače je *nedeterministički*.

*Tranzitivna sekvenca* je sekvenca stanje $s_0, \ldots, s_n$, tako da $s_0\,\mathsf{initial}$. i $s_i \mapsto s_{i+1}$ za svako $0 \leq i < n$. Tranzitivna sekvenca je *maksimalna* akko ne postoji stanje $s$ tako da $s_n \mapsto s$. Tranzitivna sekvenca je *kompletna* akko je maksimalna i $s_n\,\mathsf{final}$.  Zbog toga svaka tranzitivna sekvenca koja je kompletna onda je maksimalna, ali obratno ne mora da važi. [Rasuđivanje](rasuđivanja.md) $s\downarrow$ kaže da postoji kompletna tranzitivna sekvenca koja počinje od $s$. 

[Rasuđivanje](rasuđivanja.md) $s \mapsto^{\star} s'$ nazivamo *iteracijom* prelaska koju definišemo [induktivno](induktivna-definicija.md) pomoću sledećih [pravila](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$s \mapsto^{\star} s$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$s \mapsto s'$}
\AxiomC{$s' \mapsto^{\star} s''$}
\BinaryInfC{$s \mapsto^{\star} s''$}
\end{prooftree}\ .
$$

[Induktivni princip](pravilo-indukcije.md) iteracije tvrdi da bi pokazali da važi $\mathcal{P}(s,s')$ kada $s \mapsto^{\star} s'$, dovoljno je pokazati da važe sledeće dve osobine:
1. $\mathcal{P}(s,s)$. ($\mathcal{P}$ is *refleksivno*)
2. Ako $s \mapsto s'$ i $\mathcal{P}(s',s'')$, onda $\mathcal{P}(s, s'')$. ($\mathcal{P}$ je *zatvoreno za proširenje*)

[Rasuđivanje](rasuđivanja.md) $s \mapsto^{n} s'$, gde $n \geq 0$, nazivamo *$n$-tom iteracijom* prelaska koju definišemo [induktivno](induktivna-definicija.md) pomoću sledećih [pravila](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$s \mapsto^{0} s$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$s \mapsto s'$}
\AxiomC{$s' \mapsto^{n} s''$}
\BinaryInfC{$s \mapsto^{n+1} s''$}
\end{prooftree}\ .
$$
**Teorema.** Za bilo koja stanja $s$ i $s'$, $s \mapsto^{\star} s'$ akko $s \mapsto^{k} s'$ za neko $k \geq 0$. $\square$
