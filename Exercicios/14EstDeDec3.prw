/*4�Estrutura de decis�o 3 
//Fa�a uma fun��o que leia um n�mero e exiba o dia correspondente da semana. 
//(1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inv�lido.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_3_14()

    Local nNumero := 0
    Local lLoop := .t.

    while lLoop
        nNumero := FWInputBox("Informe um n�mero de 1 a 7, para saber o dia da semana: ")
        if nNumero > "7" .or. nNumero < "1"
            MsgAlert("Valor inv�lido!" + CRLF + "Digite um valor entre 1 e 7", "DIA DA SEMANA")
        else
            Do Case
                Case nNumero == "1"
                    MsgAlert("Hoje � Domingo","DIA DA SEMANA")
                Case nNumero == "2"
                    MsgAlert("Hoje � Segunda-Feira","DIA DA SEMANA")
                Case nNumero == "3"
                    MsgAlert("Hoje � Ter�a-Feira","DIA DA SEMANA")
                Case nNumero == "4"
                    MsgAlert("Hoje � Quarta-Feira","DIA DA SEMANA")
                Case nNumero == "5"
                    MsgAlert("Hoje � Quinta-Feira","DIA DA SEMANA")
                Case nNumero == "6"
                    MsgAlert("Hoje � Sexta-Feira","DIA DA SEMANA")
                Case nNumero == "7"
                    MsgAlert("Hoje � Sabado","DIA DA SEMANA") 
            EndCase
            lLoop := MsgYesNo("Aperte SIM para refazer a opera��o", "Deseja sair?")
        endif
    end 
    
Return 
