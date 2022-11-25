/*#26 � Exercicios Com Strings
Tamanho de strings. Fa�a uma fun��o que leia 2 strings e retorne o conte�do delas 
seguido do seu comprimento. Informe tamb�m se as duas strings possuem o mesmo comprimento 
e s�o iguais ou diferentes no conte�do.
Exemplo:
Compara duas strings
String 1: Brasil Hexa 2006
String 2: Brasil! Hexa 2006!
Tamanho de "Brasil Hexa 2006": 16 caracteres
Tamanho de "Brasil! Hexa 2006!": 18 caracteres
As duas strings s�o de tamanhos diferentes.
As duas strings possuem conte�do diferente.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function string26()

    Local cTexto1 := ""
    Local cTexto2 := ""
    Local nI := 0
    Local nCont1 := 0
    Local nCont2 := 0
    Local cMsg := ""
    Local cMsg1 := ""

    cTexto1 := FWInputBox("Escreva um conte�do: ")
    cTexto2 := FWInputBox("Escreva outro conte�do: ")

    for nI := 1 to len(cTexto1)
        nCont1++
    next

    for nI := 1 to len(cTexto2)
        nCont2++
    next

    if len(cTexto1) == len(cTexto2)
        cMsg := "As duas strings possuem o mesmo tamanhos."
    else
        cMsg := "As duas strings s�o de tamanhos diferentes."    
    endif

    if (cTexto1) == (cTexto2)
        cMsg1 := "As duas strings possuem o mesmo conte�do."
    else
        cMsg1 := "As duas strings possuem conte�dos diferentes."    
    endif

    FWAlertSuccess("String 1: " + cTexto1 + " tem " + AllTrim(str(nCont1)) + " caracteres" + CRLF + CRLF +; 
    "String 2: " + cTexto2 + " tem " + AllTrim(str(nCont2)) + " caracteres" + CRLF + CRLF +;
    cMsg + CRLF + CRLF + cMsg1,"RESULTADO")
    

Return



