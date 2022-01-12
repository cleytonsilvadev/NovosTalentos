Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/01/2022
Var
// Seção de Declarações das variáveis 
   nome:caracter
   ano,nasceu,idade:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
       ano<-2022
         escreval("dados para habilitação")
         escreva("qual seu nome? ")
         leia(nome)
         escreval("qual ano voce nasceu? ")
         leia(nasceu)
         limpatela
          idade<- ano-nasceu
         escreval("sua idade é",idade)
         se idade<18 entao
         escreval("voce nao pode tirar habilitação por ser de menor")
         senao
              escreval("parabens voce pode tirar habilitação")
          fimse
Fimalgoritmo