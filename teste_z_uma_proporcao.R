################################################################################
## Teste Z de uma proporcao em R
## Jean Resende
################################################################################

"temos uma população de camundongos contendo metade machos e fêmeas 
(p = 0,5 = 50%). Alguns desses ratos (n = 160) desenvolveram câncer espontâneo, 
incluindo 95 machos e 65 fêmeas.

Queremos saber se o câncer afeta mais homens do que mulheres?

Nesta configuração:

o número de sucessos (homens com câncer) é 95
A proporção observada (po) do sexo masculino é 95/160
A proporção observada (q) da mulher é 1 -po
A proporção esperada (pe) do sexo masculino é 0,5 (50%)
O número de observações (n) é 160"

"se a proporção observada de homens (po) é igual à proporção esperada (pe)?"
res <- prop.test(x = 95, n = 160, p = 0.5, correct = FALSE)
res

"se a proporção observada de homens (po) é menor do que a proporção esperada 
(pe)?"
prop.test(x = 95, n = 160, p = 0.5, correct = FALSE, alternative = "less")

"se a proporção observada de homens (p) é maior do que a proporção esperada 
(pe)?"
prop.test(x = 95, n = 160, p = 0.5, correct = FALSE, alternative = "greater")
