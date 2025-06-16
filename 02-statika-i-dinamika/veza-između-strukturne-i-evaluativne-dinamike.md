# Veza između strukturne i evaluativne dinamike

[[strukturna-dinamika]] predstavlja korak po korak proces izvršavanja, dok [evaluativna dinamika](evaluativna-dinamika.md) zanemaruje unutrašnja stanja, i jedino se fokusira na početno i krajnje stanje.

**Teorema.** *Za sve izraze $e$ i sve vrednosti $v$, $e \mapsto^{\star} v$ akko $e \Downarrow v$.*

**Lema 1.** *Ako $e \Downarrow v$, onda $e \mapsto^{\star} v$.* 

**Dokaz:** [Indukcijom](pravilo-indukcije.md) po [evaluativnom rasuđivanju](evaluativna-dinamika.md) $e \Downarrow v$. Razmotrićemo samo slučaj za $\mathsf{plus}$: 
	Pretpostavimo da $\mathsf{plus}(e_1;e_2) \Downarrow \mathsf{num}[n]$ po pravilu za evaluaciju sabiranja. Po indukciji, znamo da je $e_1 \mapsto^{\star} \mathsf{num}[n_1]$ i  $e_e \mapsto^{\star} \mathsf{num}[n_2]$. Dalje, $$
\begin{align*}
\mathsf{plus}(e_1;e_2) &\mapsto^{\star} \mathsf{plus}(\mathsf{num}[n_1];e_2) \\
					   &\mapsto^{\star} \mathsf{plus}(\mathsf{num}[n_1];\mathsf{num}[n_2]) \\
					   &\mapsto \mathsf{num}[n_1 + n_2] \\
\end{align*}
	$$Zbog toga, $\mathsf{plus}(e_1;e_2) \mapsto^{\star} \mathsf{num}[n_1 + n_2]$ što je trebalo pokazati.
Druge slučajeve možemo pokazati slično. $\square$

**Lema 2.** *Ako $e \mapsto^{\star} e'$ i $e' \Downarrow v$, tada $e \Downarrow v$.*

**Dokaz:** [Indukcijom](pravilo-indukcije.md) po [rasuđivanju prelaska](tranzicioni-sistem.md). Razmotrićemo samo slučaj za $\mathsf{plus}$:
	Pretpostavimo da $\mathsf{plus}(e_1;e_2) \mapsto \mathsf{plus}(e_1';e_2)$ i da $e_1 \mapsto e_1'$. Pretpostavimo dalje da je $\mathsf{plus}(e_1;e_2) \Downarrow v$, tako da $e_1' \Downarrow \mathsf{num}[n_1]$, $e_2 \Downarrow \mathsf{num}[n_2]$, $n_1 + n_2\ \text{is}\ n\,\mathsf{nat}$, i $v$ is $\mathsf{num}[n]$. Indukcijom $e_1 \Downarrow \mathsf{num}[n_1]$, te je $\mathsf{plus}(e_1; e_2) \Downarrow \mathsf{num}[n]$, što je i trebalo pokazati. $\square$
