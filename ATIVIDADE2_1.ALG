Algoritmo "atividade2_2"

Var
i,num,sum,par,imp:inteiro


Inicio
 para i de 1 ate 20 faca
 escreval("coloque o numero(veremos se ele e par ou impar):")
 leia(num)
   se num mod 2=0 entao
      sum<- num+sum
   senao
        imp<- imp + 1
        fimse
 fimpara
 escreval("a sua soma de pares e", sum)
 escreval("existe cerca de:", imp, "numeros impares")


Fimalgoritmo