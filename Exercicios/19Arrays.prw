/*#19 – Listas (Arrays)
Faça um Programa que leia um vetor de 5 números inteiros 
e mostre-os numa String através de um MSGALERT().*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function Array19()

    Local aArray := {10,20,30,40,50}
    Local i

    for i := 1 to 5
        MsgAlert(str(aArray[i]), "ARRAY")
    next

RETURN
