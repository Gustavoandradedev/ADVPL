/*#27 � Exercicios Com Strings 2
Nome ao contr�rio em mai�sculas.
Fa�a uma fun��o que permita ao usu�rio digitar o seu nome e em seguida mostre o 
nome do usu�rio de tr�s para frente utilizando somente letras mai�sculas. 
Dica: lembre?se que ao informar o nome o usu�rio pode digitar letras mai�sculas ou min�sculas.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function string27()

    Local cTexto1 := ""
    Local cTexto2 := ""
    Local nI := 1

    cTexto1 := Upper(FWInputBox("Digite seu nome: "))
    for nI := len(cTexto1) to 1 step -1 
        cTexto2 += SubStr(cTexto1, nI, 1)
    next

    MsgAlert(cTexto2,"")

Return



