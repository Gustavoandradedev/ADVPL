/*#19 � Listas (Arrays)
Fa�a um Programa que leia um vetor de 5 n�meros inteiros 
e mostre-os numa String atrav�s de um MSGALERT().*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function Array19()

    Local aArray := {10,20,30,40,50}
    Local i

    for i := 1 to 5
        MsgAlert(str(aArray[i]), "ARRAY")
    next

RETURN
