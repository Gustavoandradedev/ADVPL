/*#17 – Estrutura de decisão 6
Uma fruteira está vendendo frutas com a seguinte tabela de preços:
Até 5 Kg Acima de 5 Kg
Morango R$ 2,50 por Kg R$ 2,20 por Kg
Maçã R$ 1,80 por Kg R$ 1,50 por Kg
Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra ultrapassar 
R$ 25,00, receberá ainda um #### desconto de 10% sobre este total. Faça uma função 
para receber a quantidade (em Kg) de morangos e a quantidade (em Kg) de maças adquiridas 
e retorne o valor a ser pago pelo cliente.*/


#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_6_17()

    Local nMorango := 0
    Local nMaca := 0
    Local nKg := 0
    Local nContMaca := 0
    Local nContMorango := 0
    Local nTotal := 0
    Local lLoop := .t.

    while lLoop
        while .t.
            nMorango := Val(FWInputBox("Quantos quilos(Kg) de morango deseja comprar?")) 
            if nMorango > 0
                exit
            else
                FWAlertError("Quantidade Inválida!", "Erro:")
            endif
        end

        while .t.
            nMaca := Val(FWInputBox("Quantos quilos(Kg) de maça deseja comprar?"))
            if nMaca > 0
                exit
            else
                FWAlertError("Quantidade Inválida!", "Erro:")
            endif
        end

        nContMaca := nMaca
        nContMorango := nMorango

        if nMorango > 0 .and. nMorango <= 5
            nMorango := nMorango * 2.5
        else
            nMorango := nMorango * 2.2     
        endif

        if nMaca > 0 .and. nMaca <= 5
            nMaca := nMaca * 1.8
        else
            nMaca := nMaca * 1.5     
        endif

        nKg := nContMaca + nContMorango
        nTotal := nMorango + nMaca 

        if nKg > 8 .or. nTotal > 25 
            nTotal := nTotal - (nTotal * 0.1)
        endif

        MsgAlert(AllTrim("Total à pagar é R$" + AllTrim(str(nTotal))), "")
        lLoop := MsgYesNo("Aperte SIM para refazer a operação", "Deseja sair?")

    end

RETURN
