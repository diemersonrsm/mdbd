Algoritmo "atividade2_17"
var
   i: inteiro
   media: real
   aprovados, recuperacao, reprovados: inteiro
   percAprov, percRec, percRep: real

inicio
   aprovados <- 0
   recuperacao <- 0
   reprovados <- 0

   para i de 1 ate 20 faca
      escreva("Digite a média do aluno ", i, ": ")
      leia(media)

      se (media >= 7) entao
         aprovados <- aprovados + 1
      senao
         se (media >= 5) entao
            recuperacao <- recuperacao + 1
         senao
            reprovados <- reprovados + 1
         fimse
      fimse
   fimpara

   percAprov <- (aprovados * 100) / 20
   percRec <- (recuperacao * 100) / 20
   percRep <- (reprovados * 100) / 20

   escreval("Aprovados: ", aprovados, " (", percAprov, "%)")
   escreval("Recuperação: ", recuperacao, " (", percRec, "%)")
   escreval("Reprovados: ", reprovados, " (", percRep, "%)")

fimalgoritmo