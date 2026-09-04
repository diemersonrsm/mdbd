Algoritmo "atividade2_3"

var
num, maiorP, menorN, i: inteiro

inicio

maiorP <- 0
menorN <- 0

para i de 1 ate 15 faca
   escreva("Digite um numero: ")
   leia(num)

   se (num > 0) e (num > maiorP) entao
      maiorP <- num
   fimse

   se (num < 0) e (menorN = 0) ou (num < menorN) entao
      menorN <- num
   fimse

fimpara

escreval("Maior numero positivo: ", maiorP)
escreval("Menor numero negativo: ", menorN)

fimalgoritmo
