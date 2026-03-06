Algoritmo "ativi9dade2_4"
var
   num, i: inteiro
   cont1, cont2, cont3: inteiro

inicio

cont1 <- 0
cont2 <- 0
cont3 <- 0

para i de 1 ate 30 faca
   escreva("Digite um numero: ")
   leia(num)

   se num >= 0 e num <= 25 entao
      cont1 <- cont1 + 1
   fimse

   se num >= 26 e num <= 50 entao
      cont2 <- cont2 + 1
   fimse

   se num > 50 entao
      cont3 <- cont3 + 1
   fimse

fimpara

escreval("Quantidade entre 0 e 25: ", cont1)
escreval("Quantidade entre 26 e 50: ", cont2)
escreval("Quantidade acima de 50: ", cont3)


Fimalgoritmo