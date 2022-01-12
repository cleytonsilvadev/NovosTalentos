Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/01/2022
Var
// Seção de Declarações das variáveis
  n1,n2,r:inteiro
    funcao menorNumero(x,y:inteiro):inteiro
    var res:inteiro
inicio
      se(x > y)entao
      retorne y
      senao(y > x) entao
       retorne x
       fimse
    fimfuncao
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
     escreva("digite o primeiro numero: ")
     leia(n1)
     escreva("digite o segundo numero: ")
     leia(n2)
     se(n1=n2)entao
     escreval ("os numeros sao iguais")
     senao
      r<-menorNumero(n1,n2)
      escreva("o menor numero entre ",n1," e ",n2," é ",r)
      fimse
Fimalgoritmo