Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Lucas
// Descrição   : calcula uma tabuada
// Autor(a)    : Cleyton Rodrigues Da Silva
// Data atual  : 12/01/2022
Var
    n,t:inteiro

funcao tabuada(x:inteiro):inteiro
     var tab,res:inteiro
inicio
      tab <- x * tab
      ENQUANTO tab <=10 FACA

         res <- x * tab
         escreval(x,"x",tab,"=",res)
         tab <-tab+1
      fimenquanto
      escreval("----------------")
fimfuncao
Inicio
      escreval("calculo tabuada")
      escreval("----------------")
      escreva("tabuada do")
      leia(n)
      escreval("----------------")
      t<-tabuada(n)

Fimalgoritmo