Algoritmo "Tv_por_Assinatura"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor:  Lucas Santos
// Descrição:  Central de atendimetno de um contrato de Tv por assinatura
// Autor(a):   Antonio Marinho,   Cleyton Rodrigues,   Fernanda Vincente,
//             Gilzete Nascimento, Joaldí Soares, João Guedes, Marcelo Andrade,
//             Marcos, Pedro, Rafael Cerqueiro, Tiago, wolmer de Lucena.
// Data da apresentação: 17/01/2022
Var
   nome, tip, endereco, email, cep, estado, cpf, confirma, cidade, vol, titular, ncart, cvv, bandeira, validade:caracter
   pacote:inteiro

procedimento traco

var i: inteiro

inicio


    para i de 1 ate 54 faca
    
       escreva("-")
       i <- i+1
       
    fimpara
    
    escreval()
    
fimprocedimento

procedimento testacpf (var cpf: caracter)

var

   x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11: inteiro
   i,som,som1,som2,dig1,dig2: inteiro
   cond: logico

inicio

   repita

      leia(cpf)

      se ((compr(cpf) < 11) ou (compr(cpf) > 11)) entao
         escreval ()
         escreval ("                  ==============                  ")
         escreval ("                  |CPF INVÁLIDO|                  ")
         escreval ("                  ==============                  ")
         escreval ()
         escreva ("*Digite um CPF válido: ")
         cond <- FALSO

      senao

         x1 <- caracpnum(copia(cpf,1,1))
         x2 <- caracpnum(copia(cpf,2,1))
         x3 <- caracpnum(copia(cpf,3,1))
         x4 <- caracpnum(copia(cpf,4,1))
         x5 <- caracpnum(copia(cpf,5,1))
         x6 <- caracpnum(copia(cpf,6,1))
         x7 <- caracpnum(copia(cpf,7,1))
         x8 <- caracpnum(copia(cpf,8,1))
         x9 <- caracpnum(copia(cpf,9,1))
         x10 <- caracpnum(copia(cpf,10,1))
         x11 <- caracpnum(copia(cpf,11,1))

         som <- 0

         som <- (x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11)

         se (som = (11 * x1)) entao

            escreval ()
            escreval ("                  ==============                  ")
            escreval ("                  |CPF INVÁLIDO|                  ")
            escreval ("                  ==============                  ")
            escreval ()
            escreva ("*Digite um CPF válido: ")
            cond <- FALSO

         senao


            som1 <- 0

            som1 <- ((x1*10)+(x2*9)+(x3*8)+(x4*7)+(x5*6)+(x6*5)+(x7*4)+(x8*3)+(x9*2))

            se ((som1 % 11) < 2) entao

               dig1 <- 0

            senao

               dig1 <- (11 - (som1 % 11))

            fimse

            som2 <- 0

            som2 <- ((x1*11)+(x2*10)+(x3*9)+(x4*8)+(x5*7)+(x6*6)+(x7*5)+(x8*4)+(x9*3)+(x10*2))

            se ((som2 % 11) < 2) entao

               dig2 <- 0
            senao

               dig2 <- (11 - (som2 % 11))

            fimse

            se ((dig1 <> x10) ou  (dig2 <> x11)) entao

               escreval ()
               escreval ("                  ==============                  ")
               escreval ("                  |CPF INVÁLIDO|                  ")
               escreval ("                  ==============                  ")
               escreval ()
               escreva ("*Digite um CPF válido: ")
               cond <- FALSO

            senao

               cond <- VERDADEIRO

            fimse


         fimse

      fimse

   ate (cond <> FALSO)

fimprocedimento

procedimento verificacep (var cep ,estado: caracter)

var verif: caracter
   cond: logico


inicio

   repita

      leia(cep)

      se ((compr(cep) < 8) ou (compr(cep) > 8)) entao

         escreval ()
         escreval ("                  ==============                  ")
         escreval ("                  |CEP INVÁLIDO|                  ")
         escreval ("                  ==============                  ")
         escreval ()
         escreva ("*Digite um CEP válido: ")
         cond <- FALSO

      senao

         verif <- copia(cep,1,5)

         se ((verif >= "50000") e (verif <= "56999")) entao

            estado <- "Pernambuco"
            cond <- VERDADEIRO

         senao

            se ((verif >= "58000") e (verif <= "58999")) entao

               estado <- "Paraiba"
               cond <- VERDADEIRO

            senao
               traco
               escreval ("Sua área não possui cobertura.")
               escreval ("Lamentamos muito.")
               traco
               escreva ("*Digite outro CEP: ")
               cond <- FALSO
            fimse

         fimse

      fimse

   ate (cond <> falso)

fimprocedimento

Procedimento programa
Inicio
   escreval ("______________________________________________________")
   escreval ("                                \_/                   ")
   escreval ("                  V I S I O N  |___|                  ")
   traco
   escreval ("Olá, seja bem-vindo a central de assinatura da Vision!")
   escreval ("Para realizar seu  cadastro precisamos de alguns dados")
   escreval ("seus:")
   escreval ()
   escreval ("DADOS PESSOAIS *")
   escreval ()
   escreva ("*Nome: ")
   leia(nome)
   escreva("*CEP: ")
   verificacep(cep,estado)
   escreva("*CPF: ")
   testacpf(cpf)
   escreval ("*Estado: ", estado)
   escreva ("*Cidade: ")
   leia (cidade)
   escreva("*Endereço: ")
   leia(endereco)
   escreva("*E-mail: ")
   leia(email)
   escreval ()
   escreval ("DADOS DE PAGAMENTO (CARTAO DE CRÉDITO)*")
   escreval ()
   escreva ("*Nome do titular: ")
   leia (titular)
   escreva ("*Número Cartão: ")
   leia (ncart)
   escreva ("*Data de validade(mm/aa):")
   leia (validade)
   escreva ("*CVV:")
   leia (cvv)
   escreva ("*Bandeira: ")
   leia (bandeira)
   traco
   limpatela
   traco
   escreval("        Disponibilizamos os seguintes pacotes          ")
   traco
   escreval ("         [1]Bronze    [2]Prata     [3]Ouro        ")
   escreval ("         5 canais     10 canais    15 canais      ")
   escreval ("         R$ 10,00     R$ 20,00     R$ 30,00       ")
   traco
   escreva("Digite o número referente ao Pacote desejado: ")
   leia (pacote)
   se (pacote>3) ou (pacote<1) entao
      repita
         escreva("Digite um número válido: ")
         leia (Pacote)
       até (pacote=1) ou (pacote=2) ou (pacote=3)
   fimse
   traco
   limpatela
   traco
   escreval("                   DADOS DE CADASTRO                   ")
   traco
   escreval ("Nome: ",nome)
   escreval ("CPF: ",cpf)
   escreval ("CEP: ", CEP)
   escreval ("Estado: ", estado)
   escreval ("Cidade: ", cidade)
   escreval ("Endereço: ", endereco)
   escreval ("E-mail: ", email)
   traco
   escreval ("*Nome do titular: ", titular)
   escreval ("*Número Cartão: ", ncart)
   escreval ("*Data de validade:", validade)
   escreval ("*CVV:", cvv)
   escreval ("*Bandeira: ", bandeira)

   se (pacote = 1) entao

      tip <- "BRONZE"

   senao

      se (pacote = 2)  entao

         tip <- "PRATA"

      senao

         tip <- "OURO"
      fimse

   fimse
   traco
   escreval ("Pacote Desejado: " , tip)
   traco
   escreval ("Os dados estão corretos(digite 'Sim' ou 'Não')?")
   leia (confirma)
   se (confirma<>"Sim") e (confirma<>"sim") e (confirma<>"Não") e (confirma<>"não") e (confirma<>"nao") e (confirma<>"Nao") entao
      repita
      escreva ("Digite 'Sim' ou 'Não': ")
      leia(confirma)
      até (confirma="Sim") ou (confirma="sim") ou (confirma="não") ou (confirma="Não") ou (confirma="nao") e (confirma="Nao")
   fimse
      se (confirma="Sim") ou (confirma="sim") entao
         limpatela
         escreval ("======================================================")
         escreval ("      PARABÉNS! AGORA VOCÊ É UM CLIENTE " , tip,"!"   )
         escreval ("======================================================")
      senao
         se (confirma="não") ou (confirma="Não") ou (confirma="nao") ou (confirma="Nao") entao
            limpatela
            reboot
         fimse
      fimse
fimprocedimento
procedimento reboot
inicio
   escreval ("- Pressione qualquer tecla+[Enter] ou  apenas [Enter]")
   escreval ("  para voltar para central de  atendimento se desejar")
   escreval ("  refazer o cadastro.")
   escreval ()
   escreval ("- Digite  'fim'+[Enter]  para  fechar o programa caso")
   escreval ("não queira refazer o cadastro.")
   escreval ()
   escreva ("Digite: ")
   leia (vol)
   se (vol="fim") ou (vol="Fim") entao
      fimalgoritmo
      senao
      limpatela
      programa
   fimse
fimprocedimento
inicio
   programa
fimalgoritmo