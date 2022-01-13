Algoritmo "Tv_por_Assinatura"
// Disciplina: [Linguagem e Lógica de Programação]
// Professor: Lucas
// Descrição: Centra de atendimento de um empresa que fornece Tv por assinatura
// Autor(a):
// Data da apresentação: 17/01/2022
Var
   nome,endereco,email, cep,estado, cpf, confirma, vol:caracter
   pacote:inteiro
procedimento traco
inicio
   escreval("---------------------------------------------------")
fimprocedimento
procedimento verificacep (pec: caracter)
var
inicio
   se (pec>="50000000") e (pec<= "56999999") ou (pec>="58000000") e (pec<="58999000")  entao
      escreva ()
   senao
      escreval()
      escreval ("===================================================")
      escreval ("Desculpe ", nome , ", mas a sua região não possui cobertura")
      escreval ("para nem um de nossos planos, lamentamos muito.")
      escreval ("===================================================")
      fimalgoritmo
   fimse
fimprocedimento
Procedimento programa
Inicio
   traco
   escreval ("                   V I S I O N                    ")
   traco
   escreval("Olá, seja bem-vindo a central de assisnatura Vision!")
   escreval ("Para realizar seu cadastro precisamos de alguns Dados seus")
   escreval ()
   escreva ("*Digite seu Nome: ")
   leia(nome)
   escreva("*Digite seu CEP: ")
   leia (cep)
   verificacep(cep)
   escreva("*Digite seu CPF: ")
   leia(cpf)
   escreva("*Digite seu Endereço: ")
   leia(endereco)
   escreva("*Digite seu E-mail: ")
   leia(email)
   traco
   limpatela
   traco
   escreval("      Disponibilizamos os seguintes pacotes        ")
   traco
   escreval ("       [1]Bronze    [2]Prata     [3]Ouro        ")
   escreval ("       5 canais     10 canais    15 canais      ")
   escreval ("       R$ 10,00     R$ 20,00     R$ 30,00       ")
   traco
   escreva("Digite o número referente ao Pacote desejado: ")
   leia(pacote)
   traco
   limpatela
  //area de finalização de contrato
   traco
   escreval("Dados de Cadastro ")
   traco
   escreval ("Nome: ",nome)
   escreval ("CPF: ",cpf)
   escreval ("Endereço: ", endereco, ", ", cep)
   escreval ("E-mail: ", email)
   escreval ("Pacote Desejado: [",pacote,"] Tipo do Pacote")
   traco
   escreval ("Os dados estão corretos(digite 'Sim' ou 'não')?")
   leia (confirma)
   limpatela
   se (confirma="Sim") ou (confirma="sim") entao
      escreval ("===================================================")
      escreval("PARABÉNS! AGORA VOCÊ É UM CLIENTE *(tipo do plano)*")
      escreval ("===================================================")
   senao
     reboot
   fimse
fimprocedimento
procedimento reboot
inicio
      escreval ("- Pressione qualquer tecla e pressione [Enter] para voltar")
      escreval ("para central de atendimento se desejar refazer o cadastro.")
      escreval
      escreval ("- Pressione 'fim' e pressione [Enter] para fechar o programa")
      escreval ("caso não queira refazer o cadastro")
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