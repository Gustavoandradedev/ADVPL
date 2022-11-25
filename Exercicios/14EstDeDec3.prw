/*4–Estrutura de decisão 3 
//Faça uma função que leia um número e exiba o dia correspondente da semana. 
//(1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inválido.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_3_14()

    Local nNumero := 0
    Local lLoop := .t.

    while lLoop
        nNumero := FWInputBox("Informe um número de 1 a 7, para saber o dia da semana: ")
        if nNumero > "7" .or. nNumero < "1"
            MsgAlert("Valor inválido!" + CRLF + "Digite um valor entre 1 e 7", "DIA DA SEMANA")
        else
            Do Case
                Case nNumero == "1"
                    MsgAlert("Hoje é Domingo","DIA DA SEMANA")
                Case nNumero == "2"
                    MsgAlert("Hoje é Segunda-Feira","DIA DA SEMANA")
                Case nNumero == "3"
                    MsgAlert("Hoje é Terça-Feira","DIA DA SEMANA")
                Case nNumero == "4"
                    MsgAlert("Hoje é Quarta-Feira","DIA DA SEMANA")
                Case nNumero == "5"
                    MsgAlert("Hoje é Quinta-Feira","DIA DA SEMANA")
                Case nNumero == "6"
                    MsgAlert("Hoje é Sexta-Feira","DIA DA SEMANA")
                Case nNumero == "7"
                    MsgAlert("Hoje é Sabado","DIA DA SEMANA") 
            EndCase
            lLoop := MsgYesNo("Aperte SIM para refazer a operação", "Deseja sair?")
        endif
    end 
    
Return 
