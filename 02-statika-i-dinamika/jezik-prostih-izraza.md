# Jezik prostih izraza

*Jezik prostih izraza* $\mathbf{E}$ predstavlja formalan jezik koji ima dva tipa $\mathsf{nat}$ i $\mathsf{str}$, gde svaki izraz predstavlja promenljivu, broj, niske, operacije plus, puta nad brojevima, kao i operaciju nadovezivanja nad niskama. Pored toga, definiše i operaciju provere dužine niske, kao i operaciju zamene promenljive izrazom.

[Sintaksna tabela](sintaksna-tabela.md) za *jezik prostih izraza*, $\mathbf{E}$:
$$
\begin{split}
\mathsf{Typ}\ \tau ::=\ &\mathsf{nat}\ &\mathsf{nat}\ &\text{number}\\
 &\mathsf{str}\ &\mathsf{str}\ &\text{string}\\
\mathsf{Exp}\ e ::=\ &x\ &x\ &\text{variable}\\
					 &\mathsf{num}[n]\ &n\ &\text{numeral}\\
					 &\mathsf{str}[s]\ &s\ &\text{literal}\\
					 &\mathsf{plus}(e_1;e_2)\ &e_1+e_2\ &\text{addition}\\
					 &\mathsf{times}(e_1;e_2)\ &e_1*e_2\ &\text{multiplication}\\
					 &\mathsf{cat}(e_1;e_2)\ &e_1 e_2\ &\text{concatenation}\\
					 &\mathsf{len}(e_1)\ &|e_1|\ &\text{length}\\
					 &\mathsf{let}(e_1;x.e_2)\ &\mathsf{let}\ x\ \mathsf{be}\ e_1\ \mathsf{in}\ e_2\ &\text{definition}\\
					 
\end{split}
$$

[Statika](statičko-procesiranje.md) za jezik prostih izraza $\mathbf{E}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma, x : \tau \vdash x : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{str}[s] : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{plus}(e_1;e_2) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{times}(e_1;e_2) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{str}$}
\AxiomC{$\Gamma \vdash e_2 : \mathsf{str}$}
\BinaryInfC{$\Gamma \vdash \mathsf{cat}(e_1;e_2) : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e : \mathsf{str}$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(e) : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \tau_1$}
\AxiomC{$\Gamma, x:\tau_1 \vdash e_2 : \tau_2$}
\BinaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) : \mathsf{str}$}
\end{prooftree}
$$

[Strukturna dinamika](strukturna-dinamika.md) za jezik $\mathbf{E}$:

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
[jednakosna-dinamika](jednakosna-dinamika.md) jezika prostih izraza $\mathbf{E}$ definišemo [induktivno](induktivna-definicija.md) sledećim grupama [pravila](pravila-zaključivanja.md):

1. Definiciona jednakost je *ekvivalencija*:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash e \equiv e : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e' \equiv e : \tau$}
\UnaryInfC{$\Gamma \vdash e \equiv e' : \tau$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e' \equiv e : \tau$}
\AxiomC{$\Gamma \vdash e' \equiv e'' : \tau$}
\BinaryInfC{$\Gamma \vdash e \equiv e'' : \tau$}
\end{prooftree}
$$
2. Definiciona jednakost je *kongruencija*:
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{plus}(e_1;e_2) \equiv \mathsf{plus}(e_1';e_2') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{num}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{num}$}
\BinaryInfC{$\Gamma \vdash \mathsf{times}(e_1;e_2) \equiv \mathsf{times}(e_1';e_2') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \mathsf{str}$}
\AxiomC{$\Gamma \vdash e_2 \equiv e_2' : \mathsf{str}$}
\BinaryInfC{$\Gamma \vdash \mathsf{cat}(e_1;e_2) \equiv \mathsf{cat}(e_1';e_2') : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e \equiv e' : \mathsf{str}$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(e) \equiv \mathsf{len}(e') : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 \equiv e_1' : \tau_1$}
\AxiomC{$\Gamma, x : \tau_1 \vdash e_2 \equiv e_2' : \tau_2$}
\BinaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) \equiv \mathsf{let}(e_1';x.e_2') : \tau_2$}
\end{prooftree}
$$
3. Primitivne konstrukcije jezika:
$$
\begin{prooftree}
\AxiomC{$n_1 + n_2 = n$}
\UnaryInfC{$\Gamma \vdash \mathsf{plus}(\mathsf{num}[n_1];\mathsf{num}[n_2]) = \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$n_1 * n_2 = n$}
\UnaryInfC{$\Gamma \vdash \mathsf{times}(\mathsf{num}[n_1];\mathsf{num}[n_2]) = \mathsf{num}[n] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$s_1 \cdot s_2 = s$}
\UnaryInfC{$\Gamma \vdash \mathsf{cat}(\mathsf{str}[s_1];\mathsf{str}[s_2]) = \mathsf{str}[s] : \mathsf{str}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$|s|=l$}
\UnaryInfC{$\Gamma \vdash \mathsf{len}(\mathsf{str}[s]) = \mathsf{num}[l] : \mathsf{num}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\Gamma \vdash \mathsf{let}(e_1;x.e_2) \equiv [e_1/x]e_2 : \tau$}
\end{prooftree}
$$

[[evaluativna-dinamika]] jezika prostih izraza $\mathbf{E}$:
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{num}[n] \Downarrow \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{str}[s] \Downarrow \mathsf{str}[s]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \Downarrow \mathsf{num}[n_1]$}
\AxiomC{$e_2 \Downarrow \mathsf{num}[n_2]$}
\AxiomC{$n_1 + n_2\ \mathsf{is}\ n\,\mathsf{nat}$}
\TrinaryInfC{$\mathsf{plus}(e_1;e_2) \Downarrow \mathsf{num}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \Downarrow \mathsf{str}[s_1]$}
\AxiomC{$e_2 \Downarrow \mathsf{str}[s_2]$}
\AxiomC{$s_1 \cdot s_2 = s\,\mathsf{str}$}
\TrinaryInfC{$\mathsf{cat}(e_1;e_2) \Downarrow \mathsf{str}[s]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e \Downarrow \mathsf{str}[s]$}
\AxiomC{$|s|\ \mathsf{is}\ n\,\mathsf{nat}$}
\BinaryInfC{$\mathsf{len}(e) \Downarrow \mathsf{nat}[n]$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$[e_1/x]e_2 \Downarrow v_2$}
\UnaryInfC{$\mathsf{let}(e_1;x.e_2) \Downarrow v_2$}
\end{prooftree}
\quad
\begin{prooftree}
\AxiomC{$e_1 \Downarrow v_1$}
\AxiomC{$[v_1/x]e_2 \Downarrow v_2$}
\BinaryInfC{$\mathsf{let}(e_1;x.e_2) \Downarrow v_2$}
\end{prooftree}
$$

### Osobine

**Teorema (o jedinstvenosti tipa).** *Za bilo koji [tipski kontekst](statičko-procesiranje.md) $\Gamma$ i za bilo koji izraz $e$, postoji najviše jedan tip $\tau$ tako da $\Gamma \vdash e : \tau$.*

**Dokaz.** Indukcijom po pravilima koja definišu statiku jezika prostih tipova i činjenicom da su promenljive najviše jedanog tipa. $\square$

**Teorema (o inverziji tipova).** *Neka je $\Gamma \vdash e : \tau$. Ako $e = \mathsf{plus}(e_1;e_2)$, onda $\tau = \mathsf{num}$, $\Gamma \vdash e_1 : \mathsf{num}$ i $\Gamma \vdash e_2 : \mathsf{num}$. Slično i za druge konstrukte jezika prostih izraza $\mathbf{E}$.*

**Dokaz.** Indukcijom po [izvođenjima](izvođenja.md) [tipskog rasuđivanja](tipska-rasuđivanja.md) $\Gamma \vdash e : \tau$. $\square$
## Strukturne osobine

**Teorema (o slabljenju).** *Ako $\Gamma \vdash e' : \tau'$, onda $\Gamma, x : \tau \vdash e' : \tau'$, za bilo koje novo $x$ za $\Gamma$ i bilo koje $\tau$.*

**Dokaz.** Indukcijom po izvođenjima tipskog rasuđivanja $\Gamma \vdash e' : \tau'$. $\square$

**Teorema (o zameni).** *Ako $\Gamma, x : \tau \vdash e' : \tau'$ i $\Gamma \vdash e : \tau$, onda $\Gamma \vdash [e/x]e' : \tau'$.*

**Dokaz.** Indukcijom po izvođenjima tipskog rasuđivanja $\Gamma \vdash e' : \tau'$. $\square$

**Teorema (o dekompoziciji).** *Ako $\Gamma \vdash [e/x]e' : \tau'$, onda za svaki tip $\tau$ za koji $\Gamma \vdash e : \tau$, imamo da $\Gamma, x : \tau \vdash e' : \tau'$.*

**Dokaz.** Tip od $[e/x]e'$ zavisi samo od tipa terma $e$, bez obzira gde se javlja. $\square$

## Determinizam

**Lema (o konačnosti vrednosti).** *Ne postoji izraz $e$ za koji imamo i $e\,\mathsf{val}$ i $e \mapsto e'$ za neki izraz $e'$.* $\square$

**Lema (o determinizmu).** *Ako $e \mapsto e'$ i $e \mapsto e''$, onda su $e'$ i $e''$ $\alpha$-ekvivalentni.* $\square$
