/*#30 – Exercicios Com Strings 5
Nome na vertical em escada.
Modifique a função #28 de forma a mostrar o nome em formato de escada.
F
FU
FUL
FULA
FULAN
FULANO*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function string30()

    Local cTexto1 := ""
    Local cTexto2 := ""
    Local nI := 1
    Local cLinha := ""

    cTexto1 := Upper(FWInputBox("Digite seu nome: "))
    for nI := 1 to len(cTexto1)
        cTexto2 += SubStr(cTexto1, nI, 1)
        cLinha += cTexto2 + CRLF
    next

    MsgAlert(cLinha,"")

Return



