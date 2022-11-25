/*#16 � Estrutura de decis�o 5
Fa�a uma fun��o que pe�a um n�mero correspondente a um determinado 
ano e em seguida informe se este ano � ou n�o bissexto.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_5_16()

    Local nNumero := 0

    nNumero := val(FWInputBox("Digite um ano para saber se � bissexto ou n�o bissexto: "))
    
    if nNumero % 4 == 0
        MsgAlert(str(nNumero) + " � bissexto", "Ano")
    else
        MsgAlert(str(nNumero) + " n�o � bissexto", "Ano")        
    endif

RETURN    
