Algoritmo "atividade2_8"
//  
//  
var
   nota, soma, media: real
   i: inteiro

inicio

   soma <- 0

   para i de 1 ate 5 faca

      escreva("Digite a nota ", i, ": ")
      leia(nota)

      enquanto (nota < 0) ou (nota > 10) faca
         escreva("Nota inválida! Digite uma nota entre 0 e 10: ")
         leia(nota)
      fimenquanto

      soma <- soma + nota

   fimpara

   media <- soma / 5

   escreval("A média das notas é: ", media)

fimalgoritmo