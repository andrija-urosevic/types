# Sintaksna tabela

*Sintaksna tabela* predstavlja neformalan način definisanja sintakse. Definiške i apstraktnu i konkretnu sintaksu.

### Primer
 
Sintaksna tabela za *prost jezik izraza*, $\mathbf{E}$:
$$
\begin{split}
\mathsf{Typ}\ \tau ::=\ &\mathsf{nat}\ &\mathsf{nat}\ &\text{number}\\
 &\mathsf{str}\ &\mathsf{str}\ &\text{string}\\
\mathsf{Exp}\ e ::=\ &x\ &x\ &\text{variable}\\
					 &\mathsf{num}[n]\ &n\ &\text{numeral}\\
					 &\mathsf{str}[n]\ &s\ &\text{literal}\\
					 &\mathsf{plus}(e_1;e_2)\ &e_1+e_2\ &\text{addition}\\
					 &\mathsf{times}(e_1;e_2)\ &e_1*e_2\ &\text{multiplication}\\
					 &\mathsf{cat}(e_1;e_2)\ &e_1 e_2\ &\text{concatenation}\\
					 &\mathsf{len}(e_1)\ &|e_1|\ &\text{length}\\
					 &\mathsf{let}(e_1;x.e_2)\ &\mathsf{let}\ x\ \mathsf{be}\ e_1\ \mathsf{in}\ e_2\ &\text{definition}\\
					 
\end{split}
$$
