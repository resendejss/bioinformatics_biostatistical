################################################################################
## Teste Z de duas proporcoes em R
## Jean Resende
################################################################################

#prop.test(x, n, p = NULL, alternative = "two.sided", correct = TRUE)

#x: um vetor de contagens de sucessos
#n: um vetor de tentativas de contagens
#alternative: uma sequencia de caracteres especificando a hipotese alternativa
#correct: uma inndicacao logica se a correção de continuidade de Yates deve ser 
#aplicada sempre que possivel

"Grupo A com câncer de pulmão: n = 500
Grupo B, indivíduos saudáveis: n = 500

Grupo A com câncer de pulmão: n = 500, 490 fumantes, pUMA= 490 / 500 = 98
Grupo B, indivíduos saudáveis: n = 500, 400 fumantes, pB= 400 / 500 = 80

A proporção geral de fumantes é p = fr a c ( 490 + 400 ) 500 + 500 = 89
A proporção geral de não fumantes é q= 1 - p = 11"


"A proporção observada de fumantes no grupo A (pUMA) é igual à proporção observada de fumantes no grupo (pB)?"
res <- prop.test(x=c(490,400), n=c(500,500))
res

"R: a proporcao de fumantes e significativamente diferente nos dois grupos com
um valor p = 2.2e-16"

"A proporção observada de fumantes no grupo A (pUMA) é menor do que a proporção observada de fumantes no grupo (pB)?"
prop.test(x = c(490, 400), n = c(500, 500), alternative = "less")

"R: nao"

"a proporção observada de fumantes no grupo A (pUMA) é maior do que a proporção observada de fumantes no grupo (pB)?"
prop.test(x = c(490, 400), n = c(500, 500), alternative = "greater")

"R: sim"