# Jaka tipiziranost

Mnogi programski jezici imaju svojstvo *jake tipiziranosti*, odnosno spečavaju nastanak grešaka usled neusaglašenosti tipova. 

Predstavlja koherentnost između [statike](statičko-procesiranje.md) i [dinamike](dinamičko-procesiranje.md). [Statika](statičko-procesiranje.md) jezika obezbeđuje da vrednost nekog izraza imati određenu strukturu, i time je [dinamika](dinamičko-procesiranje.md) dobro definisana. Dalje, evaluacija se ne može zaglaviti u stanje iz koga nije moguće izaći. Zbog toga, *jaka tipoziranost* obezbеđuje da će, tokom svakog prelaska u novo stanje, tip ostati sačuvan, kao i da su tako tipizirana stanja dobro definisana. Time se sprečava nastanak *nelegalne instrukcije*.
### Primer

**Teorema (o jakoj tipiziranosti [jezika](jezik-prostih-izraza.md) $\mathbf{E}$).**
1. ([[prezervacija]]) *Ako $e : \tau$ i $e \mapsto e'$, onda $e' : \tau$.*
2. ([[progres]]) *Ako $e : \tau$, onda ili $e\,\mathsf{val}$ ili postoji $e'$ tako da $e \mapsto e'$.*

Kažemo da je izraz $e$ *zaglavljen* akko nije vrednost, a da pri tome ne postoji $e'$ tako da $e \mapsto e'$. Dobro tipizirano stanje se ne zaglavljuje. Obratno, zaglavljeno stanje je loše tipizirano.