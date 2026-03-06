Algoritmo "atividaed2_8"
var
   venda, bonus, totalBonus, maiorVenda: real
   i: inteiro

inicio

   totalBonus <- 0
   maiorVenda <- 0

   para i de 1 ate 10 faca

      escreva("Digite o valor vendido pelo vendedor ", i, ": ")
      leia(venda)

      // cálculo do bônus
      se (venda >= 5000) entao
         bonus <- venda * 0.10
      senao
         bonus <- venda * 0.05
      fimse

      totalBonus <- totalBonus + bonus

      // verificar maior venda
      se (venda > maiorVenda) entao
         maiorVenda <- venda
      fimse

   fimpara

   escreval("Total pago em bônus: ", totalBonus)
   escreval("Maior venda realizada: ", maiorVenda)

fimalgoritmo