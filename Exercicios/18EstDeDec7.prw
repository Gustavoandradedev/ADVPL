/*#18 � Estrutura de decis�o 7
Um posto est� vendendo combust�veis com a seguinte tabela de descontos:
a. �lcool:
    at� 20 litros, desconto de 3% por litro
    acima de 20 litros, desconto de 5% por litro
b. Gasolina:
    at� 20 litros, desconto de 4% por litro
    acima de 20 litros, desconto de 6% por litro
Fa�a uma fun��o que receba o n�mero de litros vendidos, o tipo de combust�vel 
(codificado da seguinte forma: A-�lcool, G-gasolina), calcule e retorne o valor
a ser pago pelo cliente sabendo-se que o pre�o do litro da gasolina � R$ 2,50 o
pre�o do litro do �lcool � R$ 1,90.*/


#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_7_18()

    Local nAlcool := 0
    Local nGasolina := 0
    Local nLitros := 0
    Local nContAlcool := 0
    Local nContGasolina := 0
    Local nTotal := 0
    Local lLoop := .t.
    Local nSemDesAlc := 0
    Local nSemDesGas := 0
    Local nTotalSemDesconto := 0

    while lLoop
        while .t.
            nAlcool := Val(FWInputBox("Quantos litros de �lcool?")) 
            if nAlcool > 0
                exit
            else
                FWAlertError("Quantidade Inv�lida!", "Erro:")
            endif
        end

        while .t.
            nGasolina := Val(FWInputBox("Quantos litros de Gasolina?"))
            if nGasolina > 0
                exit
            else
                FWAlertError("Quantidade Inv�lida!", "Erro:")
            endif
        end

        nContAlcool := nAlcool
        nContGasolina := nGasolina

        if nAlcool > 0 .and. nAlcool <= 20
            nSemDesAlc := nAlcool * 1.90
            nAlcool := nAlcool * 1.843//3%
        else
            nSemDesAlc := nAlcool * 1.90
            nAlcool := nAlcool * 1.805//5%     
        endif

        if nGasolina > 0 .and. nGasolina <= 20
            nSemDesGas := nGasolina * 2.5
            nGasolina := nGasolina * 2.4//4%
        else
            nSemDesGas := nGasolina * 2.5
            nGasolina := nGasolina * 2.35//6%     
        endif

        nTotalSemDesconto := nSemDesAlc + nSemDesGas   
        nLitros := nContAlcool + nContGasolina
        nTotal := nAlcool + nGasolina 

        FwAlertInfo("Total de litros " + AllTrim(STR(nLitros)) + " Litros" + CRLF + ;
                "Valor Total: R$" + AllTrim(STR(Round(nTotalSemDesconto,2))) + CRLF + ;
                "Desconto: R$" + AllTrim(STR(Round(nTotalSemDesconto - nTotal,2))) + CRLF + ;
                "Valor Final: R$" + AllTrim(STR(Round(nTotal,2))), "Dados da Compra")

        lLoop := MsgYesNo("Aperte SIM para refazer a opera��o", "Deseja sair?")

    end

RETURN
