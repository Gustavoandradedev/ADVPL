/*#27 – Exercicios Com Strings 2
Nome ao contrário em maiúsculas.
Faça uma função que permita ao usuário digitar o seu nome e em seguida mostre o 
nome do usuário de trás para frente utilizando somente letras maiúsculas. 
Dica: lembre?se que ao informar o nome o usuário pode digitar letras maiúsculas ou minúsculas.*/

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



