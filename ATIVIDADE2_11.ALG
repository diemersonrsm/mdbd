Algoritmo "atividade2_11"
var
   valor, Bruto, Descontos, desconto: real

inicio
   Bruto <- 0
   Descontos <- 0

   escreva("Digite o valor da compra (0 para encerrar): ")
   leia(valor)

   enquanto (valor <> 0) faca

      Bruto <- Bruto + valor

      se (valor > 100) entao
         desconto <- valor * 0.05
         totalDescontos <- Descontos + desconto
      fimse

      escreva("Digite o valor da compra (0 para encerrar): ")
      leia(valor)

   fimenquanto

   escreval("Faturamento bruto: R$ ", Bruto)
   escreval("Total de descontos aplicados: R$ ", Descontos)

fimalgoritmo