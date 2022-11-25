/*#20 – Listas (Arrays) 2
Faça um Programa que leia um vetor de 10 números reais e 
mostre-os na ordem inversa, em String através de um MSGALERT().
*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function Array20()

    Local aArrayA := {10.5,20.5,30.5,40.5,50.5,60.5,70.5,80.5,90.5,100.5}
    Local aArrayB := ARRAY(10)
    Local i

    for i := 1 to 10
        aArrayB[i] := aArrayA[11-i]
    next

    for i := 1 to 10
        MsgAlert(str(aArrayB[i]), "ARRAY")
    next


RETURN
