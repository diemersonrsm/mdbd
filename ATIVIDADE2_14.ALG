Algoritmo "atividade2_14"
var
   voto: inteiro
   cand1, cand2, cand3, total: inteiro
   perc1, perc2, perc3: real

inicio
   cand1 <- 0
   cand2 <- 0
   cand3 <- 0
   total <- 0

   escreva("Digite o voto (1, 2 ou 3) - 0 para encerrar: ")
   leia(voto)

   enquanto (voto <> 0) faca

      se (voto = 1) entao
         cand1 <- cand1 + 1
      senao
         se (voto = 2) entao
            cand2 <- cand2 + 1
         senao
            se (voto = 3) entao
               cand3 <- cand3 + 1
            fimse
         fimse
      fimse

      total <- total + 1

      escreva("Digite o voto (1, 2 ou 3) - 0 para encerrar: ")
      leia(voto)

   fimenquanto

   se (total > 0) entao
      perc1 <- (cand1 * 100) / total
      perc2 <- (cand2 * 100) / total
      perc3 <- (cand3 * 100) / total

      escreval("Total de votos candidato 1: ", cand1)
      escreval("Total de votos candidato 2: ", cand2)
      escreval("Total de votos candidato 3: ", cand3)

      escreval("Percentual candidato 1: ", perc1, "%")
      escreval("Percentual candidato 2: ", perc2, "%")
      escreval("Percentual candidato 3: ", perc3, "%")

      se (cand1 > cand2) e (cand1 > cand3) entao
         escreval("Vencedor: Candidato 1")
      senao
         se (cand2 > cand1) e (cand2 > cand3) entao
            escreval("Vencedor: Candidato 2")
         senao
            escreval("Vencedor: Candidato 3")
         fimse
      fimse

   senao
      escreval("Nenhum voto foi registrado.")
   fimse

fimalgoritmo