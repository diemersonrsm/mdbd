Algoritmo "atividade2_9"
var
   num, i, cont: inteiro

inicio
   escreva("Digite um número inteiro maior que 1: ")
   leia(num)

   cont <- 0

   para i de 1 ate num faca
      se (num % i = 0) entao
         cont <- cont + 1
      fimse
   fimpara

   se (contador = 2) entao
      escreva("O número ", num, " é primo.")
   senao
      escreva("O número ", num, " não é primo.")
   fimse

fimalgoritmo