Algoritmo "atividade2_10"
var
   cidadeA, cidadeB: real
   anos: inteiro

inicio
   escreva("Digite a população da Cidade A: ")
   leia(cidadeA)

   escreva("Digite a população da Cidade B: ")
   leia(cidadeB)

   anos <- 0

   enquanto (cidadeA <= cidadeB) faca
      cidadeA <- cidadeA + (cidadeA * 0.03)
      cidadeB <- cidadeB + (cidadeB * 0.015)
      anos <- anos + 1
   fimenquanto

   escreva("A Cidade A ultrapassará a Cidade B em ", anos, " anos.")

fimalgoritmo