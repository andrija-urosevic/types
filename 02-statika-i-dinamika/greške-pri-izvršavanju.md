# Greške pri izvršavanju

Postoje dve vrste grešaka: *proverena* i *neproverena*. Neproverene greške su one koje nisu dopustive unutar [sistema tipova](sistem-tipova.md), drugim rečima, nije potrebno pokretati [dinamičke procese](dinamičko-procesiranje.md) da bi uočili greške, već su sve greške već uhvaćene tokom [statičkih procesa](statičko-procesiranje.md). Proverene greške uočavamo tokom [dinamičkih procesa](dinamičko-procesiranje.md) i njih obično modelujemo tipom $\mathsf{err}$, koji predstavlja signal za grešku. 

### Primer

Proširimo [jezik prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ operacijom količnika:
$$
\begin{prooftree}
\AxiomC{$e_1 : \mathsf{num}$}
\AxiomC{$e_2 : \mathsf{num}$}
\BinaryInfC{$\mathsf{div}(e_1; e_2) : \mathsf{num}$}
\end{prooftree}\ .
$$
Izraz $\mathsf{div}(\mathsf{num}[3]; \mathsf{num}[0])$ je dobrog tipa, ali se [zaglavljuje](jaka-tipiziranost.md), tj. nije moguće deliti nulom.

Rešenje:
1. Proširiti [sistem tipova](sistem-tipova.md) tako da deljenje nulom nije dobrog tipa.
2. Pri [evaluaciji](dinamičko-procesiranje.md) dodati signal za grešku pri deljenju nulom.

Drugo rešenje je dosta praktičnije, jer bi prvo rešenje zahtevalo da dokažemo da li će se (i pod kojim uslovima) neki izraz evaluirati u nulu. Zbog toga, uvodimo [induktivnom definicijom](induktivna-definicija.md) [rasuđivanje](rasuđivanja.md) $e\,\mathsf{err}$ koje tvrdi da izraz $e$ prouzrokuje *grešku pri izvršavanju*:
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\UnaryInfC{$\mathsf{div}(e_1; \mathsf{num}[0])\,\mathsf{err}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{err}$}
\UnaryInfC{$\mathsf{div}(e_1;e_2)\,\mathsf{err}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\AxiomC{$e_2\,\mathsf{err}$}
\BinaryInfC{$\mathsf{div}(e_1;e_2)\,\mathsf{err}$}
\end{prooftree}
$$
Dodajemo i sledeću [statiku](statičko-procesiranje.md) i [dinamiku](dinamičko-procesiranje.md): 
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{error} : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{error}\,\mathsf{err}$}
\end{prooftree}
$$
[Teorema o prezervaciji](prezervacija.md) ostaje ne promenjena, dok [teorema o progresu](progres.md) postaje:

**Teorema (o progresu sa greškom).** *Ako $e : \tau$, onda ili $e\,\mathsf{err}$ ili $e\,\mathsf{val}$ ili postoji $e'$ tako da $e \mapsto e'$.* $\square$
