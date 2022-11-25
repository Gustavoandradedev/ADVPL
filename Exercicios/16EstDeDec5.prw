/*#16 – Estrutura de decisão 5
Faça uma função que peça um número correspondente a um determinado 
ano e em seguida informe se este ano é ou não bissexto.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_5_16()

    Local nNumero := 0

    nNumero := val(FWInputBox("Digite um ano para saber se é bissexto ou não bissexto: "))
    
    if nNumero % 4 == 0
        MsgAlert(str(nNumero) + " é bissexto", "Ano")
    else
        MsgAlert(str(nNumero) + " não é bissexto", "Ano")        
    endif

RETURN    
