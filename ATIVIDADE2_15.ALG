Algoritmo "atividade2_15"
var
   n, i, pares: inteiro
   a, b, proximo: inteiro

inicio
   escreva("Digite a quantidade de termos (N): ")
   leia(n)

   a <- 0
   b <- 1
   pares <- 0

   para i de 1 ate n faca
      escreval(a)

      se (a % 2 = 0) entao
         pares <- pares + 1
      fimse

      proximo <- a + b
      a <- b
      b <- proximo
   fimpara

   escreval("Quantidade de termos pares: ", pares)

fimalgoritmo