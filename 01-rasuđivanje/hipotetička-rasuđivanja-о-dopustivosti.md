# Hipotetička rasuđivanja o dopustivnosti

Za datu kolekciju [pravila](pravila-zaključivanja.md) $\mathcal{R}$, definišemo [hipotetičko rasuđivanje](hipotetička-rasuđivanja.md) *o dopustivosti* $\Gamma \models_\mathcal{R} J$, gde je $\Gamma$ kolekcija [rasuđivanja](rasuđivanja.md) (*hipoteze*), a $J$ [rasuđivanje](rasuđivanja.md) (*zaključak*) ,sa značenjem da $\vdash_{\mathcal{R}} \Gamma$ implicira $\vdash_{\mathcal{R}} J$ ([hipotetičko rasuđivanje o izvodljivosti](hipotetička-rasuđivanja-o-izvodljivosti.md)), odnosno da je zaključak $J$ [izvodljiv](izvođenja.md) iz [pravila](pravila-zaključivanja.md) $\mathcal{R}$ kada su hipoteze iz $\Gamma$ sve [izvodljive](izvođenja.md) iz [pravila](pravila-zaključivanja.md) $\mathcal{R}$. 

Ako bilo koja od hipoteza nije [izvodljiva](izvođenja.md) iz $\mathcal{R}$, onda je posledica $J$ *vakumski* valjana.

[hipotetička-rasuđivanja](hipotetička-rasuđivanja.md) o dopustivnosti nije stabilno, jer dodavanjem novih [pravila](pravila-zaključivanja.md) može narušiti dopustivnost.

**Teorema.** *Ako $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma \models_{\mathcal{R}} J$.*
**Dokaz:** Treba pokazati da $\vdash_{\mathcal{R}} J$, ako znamo da $\vdash_{\mathcal{R}} \Gamma$ i $\Gamma \vdash_{\mathcal{R}} J$. Pomoću tranzitivnosti [hipotetičkog rasuđivanja o izvodljivosti](hipotetička-rasuđivanja-o-izvodljivosti.md) to direktno sledi. $\square$

Suprotno ne mora da važi, tj. hipotetičko rasuđivanje o dopustivnosti ne implicira [hipotetičkog rasuđivanja o izvodljivosti](hipotetička-rasuđivanja-o-izvodljivosti.md).

**Teorema (o refleksivnosti).** *Važi $\Gamma, J \models_{\mathcal{R}} J$. $\square$*

**Teorema (o slabljenju).** *Ako  $\Gamma \models_{\mathcal{R}} J$, onda $\Gamma, K \models_{\mathcal{R}} J$. $\square$*

**Teorema (o tranzitivnosti).** *Ako $\Gamma, K \models_{\mathcal{R}} J$ i $\Gamma \models_{\mathcal{R}} K$, onda $\Gamma \models_{\mathcal{R}} J$. $\square$*

### Primer

[Hipotetička rasuđivanja](hipotetička-rasuđivanja.md) o dopustivnosti
$$\mathsf{succ}(a)\,\mathsf{even} \models_{\mathcal{R}} a\,\mathsf{odd}$$
je valjano, jer da bi [izveli](izvođenja.md) $\mathsf{succ}(a)\,\mathsf{even}$ neophodno je da postoji [izvođenje](izvođenja.md) $a\,\mathsf{odd}$.