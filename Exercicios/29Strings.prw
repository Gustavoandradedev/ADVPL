/*#29 – Exercicios Com Strings 4
Conta de espaços e vogais.
Dado uma string com uma frase informada pelo usuário (incluindo espaços em branco), conte:
a. quantos espaços em branco existem na frase.
b. quantas vezes aparecem as vogais a, e, i, o, u.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function string29()

    Local cTexto1 := ""
    Local cTexto2 := ""
    Local nVogais := 0
    Local nI := 1
    Local nJ := 0

    cTexto1 := Upper(FWInputBox("Digite seu nome: "))
    for nI := 1 to len(cTexto1)
        cTexto2 := SubStr(cTexto1,nI,1)
        if cTexto2 == "A" .or. cTexto2 == "E" .or. cTexto2 == "I" .or. cTexto2 == "O" .or. cTexto2 == "U"
            nVogais++
        endif
        if (cTexto2) == " "
            nJ++
        endif
    next
    MsgAlert("A frase " + AllTrim(cTexto1) + CRLF + "Tem " + AllTrim(str(nJ)) + " espaço(s) " + CRLF +;
    "E " + AllTrim(str(nVogais)) + " vogais.","RESULTADO")
Return



