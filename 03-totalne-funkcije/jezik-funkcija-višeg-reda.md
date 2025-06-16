# Jezik funkcija višeg reda

*Jezik funkcija višeg reda* $\mathbf{EF}$ proširuje [jezik prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$, tako što uopštava pojam [promenljive](jezik-prostih-izraza.md) i [funkcije prvog reda](jezik-funkcija-prvog-reda.md) na pojam *funkcije višeg reda*. 

[Sintaksnu tabelu](sintaksna-tabela.md) jezika funkcija višeg reda $\mathbf{EF}$ nadograđujemo nad [sintaksnom tabelom](sintaksna-tabela.md) [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ sa:
$$
\begin{split}
\mathsf{Typ}\ \tau ::=\ &\mathsf{arr}(\tau_1; \tau_2)\ &\tau_1 \to \tau_2\ &\text{function} \\
\mathsf{Exp}\ e ::=\ &\mathsf{lam}\{\tau\}(x.e)\quad &\lambda(x : \tau) e\ &\text{abstraction}\\
					 &\mathsf{ap}(e_1; e_2)\ &e_1(e_2)\ &\text{application}
\end{split}
$$
[Rasuđivanje](rasuđivanja.md) $\mathsf{lam}\{\tau\}(x.e)$ nazivamo *$\lambda$-apstrakcija* i predstavlja uopštenje [promenljive](jezik-prostih-izraza.md) i [funkcije prvog reda](Jezik%20funkcija%prvog%20reda), tako što ne vezuje ime funkcije $f$ za apstraktor $x.e$, već predstavlja samo definiciju u formi izraza. [Rasuđivanje](rasuđivanja.md) $\mathsf{ap}(e_1;e_2)$ nazivamo *primena funkcije*, gde je $e_1$ funkcija i $e_2$ argument. [Rasuđivanje](rasuđivanja.md) $\mathsf{arr}(\tau_1; \tau_2)$ predstavlja *tip funkcija* čiji je *domen* $\tau_1$ i *kodomen* $\tau_2$. 

Funkcije unutar jezika funkcija višeg reda su *građani provog reda*, odnosno funkcije se mogu proslediti kao argumenti drugim funkcijama, %kao i da funkcije mogu kao rezultat proizvesti druge funkcije.

[Statika](statičko-procesiranje.md) jezika funkcija višeg reda $\mathbf{EF}$ dobijamo tako što proširimo [statiku](statičko-procesiranje.md) [jezika prostih izraza](jezik-prostih-izraza.md) $\mathbf{E}$ sledećim [pravilima](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{$\Gamma, x : \tau_1 \vdash e : \tau_2$}
\UnaryInfC{$\Gamma \vdash \mathsf{lam}\{\tau_1\}(x.e) : \mathsf{arr}(\tau_1;\tau_2)$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$\Gamma \vdash e_1 : \mathsf{arr}(\tau_1; \tau_2)$}
\AxiomC{$\Gamma \vdash e_2 : \tau_1$}
\BinaryInfC{$\Gamma \vdash \mathsf{ap}(e_1;e_2) : \tau_2$}
\end{prooftree}
$$

[Dinamika](strukturna-dinamika.md) jezika funkcija višeg reda $\mathbf{EF}$ proširuje [dinamiku](strukturna-dinamika.md) [jezika](jezik-prostih-izraza.md) $\mathbf{E}$ sledećim [pravilima](pravila-zaključivanja.md):
$$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{lam}\{\tau\}(x.e)\,\mathsf{val}$}
\end{prooftree}
$$
$$
\begin{prooftree}
\AxiomC{$e_1 \mapsto e_1'$}
\UnaryInfC{$\mathsf{ap}(e_1; e_2) \mapsto \mathsf{ap}(e_1';e_2)$}
\end{prooftree}
$$
$$
\left[
\begin{prooftree}
\AxiomC{$e_1\,\mathsf{val}$}
\AxiomC{$e_2 \mapsto e_2'$}
\BinaryInfC{$\mathsf{ap}(e_1; e_2) \mapsto \mathsf{ap}(e_1;e_2')$}
\end{prooftree}
\right]
$$
$$
\begin{prooftree}
\AxiomC{$\left[e_2\,\mathsf{val}\right]$}
\UnaryInfC{$\mathsf{ap}(\mathsf{lam}\{\tau_2\}(x.e); e_2) \mapsto [e_2/x]e_1$}
\end{prooftree}
$$
Uglaste zagrade predstavljaju interpretaciju za *poziv po vrednosti*, dok izostavljanje istih predstavlja interpretaciju za *poziv po imenu*.

### Osobine

**Lema (o inverziji).** *Neka $\Gamma \vdash e : \tau$.*
1. *Ako $e = \mathsf{lam}\{\tau_1\}(x.e_2)$, onda $\tau = \mathsf{arr}(\tau_1; \tau_2)$ i $\Gamma, x : \tau_1 \vdash e_2 : \tau_2$.*
2. *Ako $e = \mathsf{ap}(e_1; e_2)$, onda postoji $\tau_2$ tako da $\Gamma \vdash e_1 : \mathsf{arr}(\tau_2;\tau)$ i $\Gamma \vdash e_2 : \tau_2$.* $\square$

**Lema (o zameni).** *Ako $\Gamma, x : \tau \vdash e' : \tau'$ i $\Gamma \vdash e : \tau$, onda $\Gamma \vdash [e/x]e' : \tau'$.* $\square$

**Teorema (o [prezeraciji](prezervacija.md)).** *Ako $e : \tau$ i $e \mapsto e'$, onda $e' : \tau$.*

**Dokaz:** Indukcijom po [dinamici](strukturna-dinamika.md) jezika $\mathbf{EF}$. Razmotrimo [pravilo](pravila-zaključivanja.md) $$
\begin{prooftree}
\AxiomC{}
\UnaryInfC{$\mathsf{ap}(\mathsf{lam}\{\tau_2\}(x.e); e_2) \mapsto [e_2/x]e_1$}
\end{prooftree}
$$Pretpostavimo da je $\mathsf{ap}(\mathsf{lam}\{\tau_2\}(x.e);e_2) : \tau_1$. Po lemi o inverziji imamo $e_2 : \tau_2$ i $x : \tau_2 \vdash e_1 : \tau_1$, te po lemi o zameni imamo da je $[e_2/x]e_1 : \tau_1$. Slično i za ostala pravila. $\square$

**Lema (o kanoničnoj formi)** *Ako $e : \mathsf{arr}(\tau_1; \tau_2)$ i $e\,\mathsf{val}$, onda $e = \lambda(x : \tau_1) e_2$ za neku promenljivu $x$ i izraz $e_2$ tako da $x : \tau_1 \vdash e_2 : \tau_2$.* $\square$

**Teorema (o [progresu](progres.md)).** *Ako $e : \tau$, onda ili $e\,\mathsf{val}$, ili postoji $e'$ tako da $e \mapsto e'$.*

**Dokaz:** Indukcijom po [dinamici](strukturna-dinamika.md) jezika $\mathbf{EF}$. Razmotrimo [pravilo](pravila-zaključivanja) $$
\begin{prooftree}
\AxiomC{$e_1 \mapsto e_1'$}
\UnaryInfC{$\mathsf{ap}(e_1; e_2) \mapsto \mathsf{ap}(e_1';e_2)$}
\end{prooftree}
$$Indukcijom imamo ili $e_1\,\mathsf{val}$ ili $e_1 \mapsto e_1'$. U drugom slučaju imamo, $\mathsf{ap}(e_1;e_2) \mapsto \mathsf{ap}(e_1';e_2)$. U prvom slučaju po lemi o kanoničnoj formi imamo da je $e_1 = \mathsf{lam}\{\tau_2\}(x.e)$, za neki $x$ i $e$.  Ali tada $\mathsf{ap}(e_1;e_2) \mapsto [e_2/x]e$. $\square$

### Primeri

Nije potrebno definisati deklaraciju funkcije, jednostavno možemo iskoristiti $\mathsf{let\_be\_in\_}$ konstrukciju i $\lambda$-apstrakciju:
$$
\begin{align*}
&\mathsf{let}\,k\,\mathsf{be}\,\lambda(x_1 : \mathsf{num})\lambda(x_2 : \mathsf{num})x_1\\
&\mathsf{in}\,
\mathsf{let}\,kz\,\mathsf{be}\,k(0)\\&\mathsf{in}\,kz(3)+kz(5).
\end{align*}
$$