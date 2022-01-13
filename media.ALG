Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/01/2022
Var
// Seção de Declarações das variáveis 
      n1,n2,nota:real
      resp:caracter

      funcao mediaa(x,y:real):real
      var r:real
      inicio
       r<-(x+y)/2
      retorne r

      fimfuncao

      funcao mediap(x1,x2:real):real
      var r:real p1,p2:inteiro
      inicio
       p1<- 5
       p2<- 3

       r<-(x1*p1+x2*p2)/p1+p2
      retorne r

      fimfuncao
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval("digite a primeira nota ")
   leia(n1)
   escreval("digite a segunda nota ")
   leia(n2)
   escreval("você gostaria de receber a media aritimetica? digite a")
   escreval("você gostaria de receber a media ponderada ? digite b")
   leia (resp)
   
   se resp = "a" entao
    nota<- mediaa(n1,n2)
   senao
    nota<- mediap(n1,n2)
    fimse
    
   escreval("a sua nota é: ",nota)
   se nota > 7 entao
   escreval("aluno aprovado")
   senao
   escreval("aluno reprovado")
   fimse
   
   

Fimalgoritmo