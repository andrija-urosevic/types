# Rasuđivanja

*Rasuđivanje* je iskaz koji opisuje *svojstvo/relaciju* jednog ili više [apstraktnih drveta vezivanja](apstraktno-drvo-vezivanja.md).

Svojstvo ili relaciju nazivamo *rasuđivačka forma/predikat*, a odgovarajućja [apstraktna drveta vezivanja](apstraktno-drvo-vezivanja.md) nazivamo *instance/subjekte*.

Rasuđivanje da rasuđivačka forma $\mathsf{J}$ važi za instancu $a$ zapisujemo kao $a\,\mathsf{J}$ ili $\mathsf{J}\,a$.

## Motivacija

[Per Martin Lof](per-martin-lof.md) uvodi pojam rasuđivanja, zato što se javlja potreba za razdvajanje pojma rasuđivanja od pojma iskaza. Na primer, $P\,\mathsf{prop}$ ($P$ je iskaz) i $P\,\mathsf{true}$ ($P$ je valjan iskaz) predstavljaju rasuđivanja, dok je u oba slučaja $P$ iskaz.

Rasuđivanje je *analitičko* ukoliko se njegova valjanost može zaključiti na osnovu njegovih termova, kao u slučaju rasuđivanja $P\,\mathsf{prop}$. Rasuđivanje je *sintetičko* ukoliko se za njegovu valjanost mora rezonovati, kao u slućaju rasuđivanja $P\,\mathsf{true}$. Interesantno je i da postoji analitičko rasuđivanje valjanosti izraza: $p : P$ koje čitamo kao $p$ je dokaz valjanosti izraza $P$.

Zašto baš termin rasuđivanje (engl. *judgement*)? [Per Martin Lof](per-martin-lof.md) pronalazi motivaciju izučavanjem filozofije, logike i istorije. Ovo termin je prirodan na srpskom jeziku, dok na engleskom jeziku može stvoriti konflikt sa pravnom terminologijom.

## Primer

$n\,\mathsf{nat}$ --- $n$ je prirodan broj
$n_1 + n_2 = n$ --- $n$ je zbir od $n_1$ i $n_2$
$\tau\,\mathsf{type}$ --- $\tau$ je tip
$e : \tau$ --- izraz $e$ je tipa $\tau$ 
$e \Downarrow v$ --- vrednost izraza $e$ je $v$
