Algoritmo "teste validade cpf"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/01/2022
Var
  v: vetor[1..11] de inteiro
  cpf : caracter
  i: inteiro
  som,som2: inteiro
  dig1, dig2: inteiro


Inicio

     leia(cpf)
     para  i de 1 ate 11 faca
     
     v[i] <- caracpnum(copia(cpf,i,1))

     fimpara
     
       para i de 1 ate 9 faca
       
       som <- som + (v[i] * (11-i))
       fimpara
       
       se ((som %11)<2) entao
       dig1 <- 0
       senao
       dig1 <- (11 - (som%11))
       fimse
       
        para i de 1 ate 10 faca

       som2 <- som2 + (v[i] * (12-i))
       fimpara
       

            se ((som2 %11)<2) entao
       dig2 <- 0
       senao
       dig2 <- (11 - (som2%11))
       fimse

       se ((dig1 <> v[10]) ou  (dig2 <> v[11]))   entao
       escreva ("cpf invalido")
       fimse

Fimalgoritmo