Algoritmo "atividade2_13"
var
   venda, totalVendido, maiorVenda, diaMaiorVenda, dia: inteiro

inicio
   totalVendido <- 0
   maiorVenda <- 0
   diaMaiorVenda <- 0

   para dia de 1 ate 30 faca
      escreva("Digite a quantidade vendida no dia ", dia, ": ")
      leia(venda)

      totalVendido <- totalVendido + venda

      se (venda < 5) entao
         escreval("Alerta: estoque baixo!")
      fimse

      se (venda > maiorVenda) entao
         maiorVenda <- venda
         diaMaiorVenda <- dia
      fimse

   fimpara

   escreval("Total vendido no período: ", totalVendido)
   escreval("Maior venda foi no dia ", diaMaiorVenda, " com ", maiorVenda, " unidades.")

fimalgoritmo