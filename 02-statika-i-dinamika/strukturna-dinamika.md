# Strukturna dinamika

*Strikturna dinamika* [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ je data [tranzitivnim sistemom](tranzicioni-sistem.md) čija su stanja zatvorena za izraze. Sva stanju su $\mathsf{initial}$; $\mathsf{final}$ stanja su *vrednosti*, koje predstavljaju gotovu računicu.

[Rasuđivanje](rasuđivanja.md) $e\,\mathsf{val}$, koje kaže da je $e$ vrednost, je [induktivno definisano](induktivna-definicija.md) sledećim [pravilima](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{num}[n]\,\mathsf{val}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{str}[s]\,\mathsf{val}$}
\end{prooftree}\ .
$$
[Rasuđivanje](rasuđivanja.md) $e \mapsto e'$ između stanja je [induktivno definisano](induktivna-definicija.md) sledećim [pravilima](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{$n_1 + n_2 = n\,\mathsf{num}$}
\UnaryInfC{$\mathsf{plus}(\mathsf{num}[n_1]; \mathsf{num}[n_2]) \mapsto \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e \mapsto e'$}
\UnaryInfC{$\mathsf{plus}(e_1; e_2) \mapsto \mathsf{plus}(e_1'; e_2)$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\AxiomC{$e_2 \mapsto e_2'$}
\BinaryInfC{$\mathsf{plus}(e_1; e_2) \mapsto \mathsf{plus}(e_1; e_2')$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$n_1 * n_2 = n\,\mathsf{num}$}
\UnaryInfC{$\mathsf{times}(\mathsf{num}[n_1]; \mathsf{num}[n_2]) \mapsto \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e \mapsto e'$}
\UnaryInfC{$\mathsf{times}(e_1; e_2) \mapsto \mathsf{times}(e_1'; e_2)$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\AxiomC{$e_2 \mapsto e_2'$}
\BinaryInfC{$\mathsf{times}(e_1; e_2) \mapsto \mathsf{times}(e_1; e_2')$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$s_1 \cdot s_2 = s\,\mathsf{str}$}
\UnaryInfC{$\mathsf{cat}(\mathsf{str}[s_1];\mathsf{str}[s_2]) \mapsto \mathsf{str}[s]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \mapsto e_1'$}
\UnaryInfC{$\mathsf{cat}(e_1;e_2) \mapsto \mathsf{cat}(e_1';e_2)$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\AxiomC{$e_2 \mapsto e_2'$}
\BinaryInfC{$\mathsf{cat}(e_1;e_2) \mapsto \mathsf{cat}(e_1;e_2')$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$|s| = l$}
\UnaryInfC{$\mathsf{len}(\mathsf{str}[s]) 
\mapsto \mathsf{num}[l]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e \mapsto e'$}
\UnaryInfC{$\mathsf{len}(e) \mapsto \mathsf{len}(e')$}
\end{prooftree}
$$
$$
\left[
\begin{prooftree}
\AxiomC{$e_1 \mapsto e_1'$}
\UnaryInfC{$\mathsf{let}(e_1;x.e_2) \mapsto \mathsf{let}(e_1';x.e_2)$}
\end{prooftree}
\right]
$$
$$
\begin{prooftree}
\AxiomC{$[e_1\,\mathsf{val}]$}
\UnaryInfC{$\mathsf{let}(e_1;x.e_2) \mapsto [e_1 / x ] e_2$}
\end{prooftree}
$$
Kockaste zagrade predstavljaju prenos *po vrednosti*, a kada su one izostavljene podrazumevamo prenos *po imenu*.

[Pravila](pravila-zaključivanja.md) delimo na *uvođenje prelaza* (predstavljaju primitivne korake evaluacije) i *pretragu prelaza* (određuju redosled izvršavanja instrukcija).

[Princip indukcije](pravilo-indukcije.md) strukturne dinamike [jezika](jezik-prostih-izraza.md) $\mathbf{E}$ kaže da bi pokazali $\mathcal{P}(e \mapsto e')$ kada $e \mapsto e'$, dovoljno je pokazati da je $\mathcal{P}$ zatvoreno nad svim pravilima njegove strukturne dinamike. 

### Primer

Sledeća sekvencu pri evaluaciji poštuje [pravila](pravila-zaključivanja.md) dinamike jezika $\mathbf{E}$:
$$
\begin{align}
& \mathsf{let}(\mathsf{plus}(\mathsf{num}[1];\mathsf{num}[2]);x.\mathsf{plus}(\mathsf{plus}(x;\mathsf{num}[3]);\mathsf{num}[4])) \\
\mapsto & \mathsf{let}(\mathsf{num}[3];x.\mathsf{plus}(\mathsf{plus}(x;\mathsf{num}[3]);\mathsf{num}[4])) \\
\mapsto & \mathsf{plus}(\mathsf{plus}(\mathsf{num}[3];\mathsf{num}[3]);\mathsf{num}[4]) \\
\mapsto & \mathsf{plus}(\mathsf{num}[6];\mathsf{num}[4]) \\
\mapsto & \mathsf{num}[10]
\end{align}
$$
