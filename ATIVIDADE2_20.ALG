Algoritmo "atividade2_20"
var
   saque, valorRestante: inteiro
   notas100, notas50, notas20, notas10, notas5, notas2, notas1: inteiro

inicio
   notas100 <- 0
   notas50 <- 0
   notas20 <- 0
   notas10 <- 0
   notas5 <- 0
   notas2 <- 0
   notas1 <- 0

   escreva("Digite o valor do saque (positivo): ")
   leia(saque)

   enquanto (saque <= 0) faca
      escreval("Valor inválido! Digite um valor positivo.")
      escreva("Digite o valor do saque: ")
      leia(saque)
   fimenquanto

   valorRestante <- saque

   enquanto (valorRestante >= 100) faca
      notas100 <- notas100 + 1
      valorRestante <- valorRestante - 100
   fimenquanto

   enquanto (valorRestante >= 50) faca
      notas50 <- notas50 + 1
      valorRestante <- valorRestante - 50
   fimenquanto

   enquanto (valorRestante >= 20) faca
      notas20 <- notas20 + 1
      valorRestante <- valorRestante - 20
   fimenquanto

   enquanto (valorRestante >= 10) faca
      notas10 <- notas10 + 1
      valorRestante <- valorRestante - 10
   fimenquanto

   enquanto (valorRestante >= 5) faca
      notas5 <- notas5 + 1
      valorRestante <- valorRestante - 5
   fimenquanto

   enquanto (valorRestante >= 2) faca
      notas2 <- notas2 + 1
      valorRestante <- valorRestante - 2
   fimenquanto

   enquanto (valorRestante >= 1) faca
      notas1 <- notas1 + 1
      valorRestante <- valorRestante - 1
   fimenquanto

   escreval("Notas de 100: ", notas100)
   escreval("Notas de 50: ", notas50)
   escreval("Notas de 20: ", notas20)
   escreval("Notas de 10: ", notas10)
   escreval("Notas de 5: ", notas5)
   escreval("Notas de 2: ", notas2)
   escreval("Notas de 1: ", notas1)

fimalgoritmo