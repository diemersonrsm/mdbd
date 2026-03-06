Algoritmo "atividade2_6"

var
   numero: real
   soma, media: real
   contador: inteiro

inicio

   soma <- 0
   contador <- 0

   escreva("Digite números positivos (negativo para parar): ")
   leia(numero)

   enquanto (numero >= 0) faca
      soma <- soma + numero
      contador <- contador + 1

      escreva("Digite outro número: ")
      leia(numero)
   fimenquanto

   se (contador > 0) entao
      media <- soma / contador
      escreva("Soma dos números positivos: ", soma,"---")
      escreval("Média dos números positivos: ", media)
   senao
      escreval("  Nenhum número positivo foi digitado.")
   fimse

fimalgoritmo