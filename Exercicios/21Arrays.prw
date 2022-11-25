/*#21 – Listas (Arrays) 3
FFaça um Programa que leia um vetor de 10 caracteres, e diga quantas 
consoantes foram lidas. Imprima as consoantes, em String através de um MSGALERT().
*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function Array21()

    Local aArrayA := {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
    Local i := 0
    Local nCons := 0

    for i := 1 to 10
        MsgAlert(aArrayA[i],"ARRAY")
        if aArrayA[i] <> "A".and. aArrayA[i] <> "E".and. aArrayA[i] <> "I".and. aArrayA[i] <> "O".and. aArrayA[i] <> "U"
            nCons++
        endif
    next
    
    MsgAlert("Total de consoantes " + STR(nCons), "TOTAL DE CONSOANTES")

RETURN
