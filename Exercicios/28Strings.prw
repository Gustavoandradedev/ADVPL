/*#28 – Exercicios Com Strings 3
Nome na vertical. Faça uma função que solicite o nome do usuário e retorne-o na vertical.
Exemplo:
F
U
L
A
N
O*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function string28()

    Local cTexto1 := ""
    Local cTexto2 := ""
    Local nI := 1

    cTexto1 := Upper(FWInputBox("Digite seu nome: "))
    while nI <= Len(cTexto1)
        cTexto2 += SubStr(cTexto1, nI, 1) + CRLF
        nI++
    end
    MsgAlert(cTexto2,"RESULTADO")
Return



