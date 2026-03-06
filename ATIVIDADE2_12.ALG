Algoritmo "atividade2_12"
var
   idade, somaIdades, totalPessoas, maiores18, menores: inteiro
   media, percentualMenores: real

inicio
   somaIdades <- 0
   totalPessoas <- 0
   maiores18 <- 0
   menores <- 0

   escreva("Digite uma idade (0 para encerrar): ")
   leia(idade)

   enquanto (idade <> 0) faca
      somaIdades <- somaIdades + idade
      totalPessoas <- totalPessoas + 1

      se (idade >= 18) entao
         maiores18 <- maiores18 + 1
      senao
         menores <- menores + 1
      fimse

      escreva("Digite uma idade (0 para encerrar): ")
      leia(idade)
   fimenquanto

   se (totalPessoas > 0) entao
      media <- somaIdades / totalPessoas
      percentualMenores <- (menores * 100) / totalPessoas

      escreval("Média das idades: ", media)
      escreval("Quantidade de maiores de 18: ", maiores18)
      escreval("Percentual de menores de idade: ", percentualMenores, "%")
   senao
      escreval("Nenhuma idade foi informada.")
   fimse

fimalgoritmo