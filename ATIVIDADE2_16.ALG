Algoritmo "atividade2_16"
var
   valor, taxa, montante, juros: real
   parcelas, i: inteiro

inicio
   escreva("Digite o valor do empréstimo: ")
   leia(valor)

   escreva("Digite a taxa de juros mensal (%): ")
   leia(taxa)

   escreva("Digite o número de parcelas: ")
   leia(parcelas)

   taxa <- taxa / 100
   montante <- valor

   para i de 1 ate parcelas faca
      montante <- montante + (montante * taxa)
   fimpara

   juros <- montante - valor

   escreval("Valor final pago: R$ ", montante)
   escreval("Total de juros pagos: R$ ", juros)

fimalgoritmo