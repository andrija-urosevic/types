
Za datu kolekciju [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$, definišemo [hipotetičko rasuđivanje](Hipotetička%20rasuđivanja.md) *o dopustivosti* $\Gamma \models_\mathcal{R} J$, gde je $\Gamma$ kolekcija [rasuđivanja](Rasuđivanja.md) (*hipoteze*), a $J$ [rasuđivanje](Rasuđivanja.md) (*zaključak*) ,sa značenjem da $\vdash_{\mathcal{R}} \Gamma$ implicira $\vdash_{\mathcal{R}} J$ ([hipotetičko rasuđivanje o izvodljivosti](Hipotetička%20rasuđivanja%20o%20izvodljivosti.md)), odnosno da je zaključak $J$ [izvodljiv](Izvođenja.md) iz [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$ kada su hipoteze iz $\Gamma$ sve [izvodljive](Izvođenja.md) iz [pravila](Pravila%20zaključivanja.md) $\mathcal{R}$. 

Ako bilo koja od hipoteza nije [izvodljiva](Izvođenja.md) iz $\mathcal{R}$, onda je posledica $J$ *vakumski* valjana.

[Hipotetička rasuđivanja](Hipotetička%20rasuđivanja.md) o dopustivnosti nije stabilno, jer dodavanjem novih [pravila](Pravila%20zaključivanja.md) može narušiti dopustivnost.

**Teorema.** *Ako $\Gamma \vdash_{\mathcal{R}} J$, onda $\Gamma \models_{\mathcal{R}} J$.*
**Dokaz:** Treba pokazati da $\vdash_{\mathcal{R}} J$, ako znamo da $\vdash_{\mathcal{R}} \Gamma$ i $\Gamma \vdash_{\mathcal{R}} J$. Pomoću tranzitivnosti [hipotetičkog rasuđivanja o izvodljivosti](Hipotetička%20rasuđivanja%20o%20izvodljivosti.md) to direktno sledi. $\square$

Suprotno ne mora da važi, tj. hipotetičko rasuđivanje o dopustivnosti ne implicira [hipotetičkog rasuđivanja o izvodljivosti](Hipotetička%20rasuđivanja%20o%20izvodljivosti.md).

**Teorema (o refleksivnosti).** *Važi $\Gamma, J \models_{\mathcal{R}} J$. $\square$*
**Teorema (o slabljenju).** *Ako  $\Gamma \models_{\mathcal{R}} J$, onda $\Gamma, K \models_{\mathcal{R}} J$. $\square$*
**Teorema (o tranzitivnosti).** *Ako $\Gamma, K \models_{\mathcal{R}} J$ i $\Gamma \models_{\mathcal{R}} K$, onda $\Gamma \models_{\mathcal{R}} J$. $\square$*

### Primer

[Hipotetička rasuđivanja](Hipotetička%20rasuđivanja.md) o dopustivnosti
$$\mathsf{succ}(a)\,\mathsf{even} \models_{\mathcal{R}} a\,\mathsf{odd}$$
je valjano, jer da bi [izveli](Izvođenja.md) $\mathsf{succ}(a)\,\mathsf{even}$ neophodno je da postoji [izvođenje](Izvođenja.md) $a\,\mathsf{odd}$.