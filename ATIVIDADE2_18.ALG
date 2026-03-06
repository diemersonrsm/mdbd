Algoritmo "atividade2_18"
var
   senha: caractere
   tentativas: inteiro

inicio
   tentativas <- 0

   escreva("Digite a senha: ")
   leia(senha)

   enquanto (senha <> "1234") faca
      escreval("Senha incorreta")
      tentativas <- tentativas + 1

      escreva("Digite a senha novamente: ")
      leia(senha)
   fimenquanto

   tentativas <- tentativas + 1

   escreval("Senha correta!")
   escreval("Quantidade de tentativas: ", tentativas)

fimalgoritmo