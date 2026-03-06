Algoritmo "atividade2_5"
var
   numero, i: inteiro
   fatorial: inteiro

inicio

   escreva("Digite um número inteiro positivo: ")
   leia(numero)


   enquanto (numero < 0) faca
      escreva("Número inválido! Digite um número inteiro positivo: ")
      leia(numero)
   fimenquanto

   fatorial <- 1

   para i de 1 ate numero faca
      fatorial <- fatorial * i
   fimpara

   escreva("O fatorial de ", numero, " é: ", fatorial)
Fimalgoritmo