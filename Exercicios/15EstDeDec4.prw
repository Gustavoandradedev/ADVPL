/*#15 � Estrutura de decis�o 4
Fa�a uma fun��o que pe�a os 3 lados de um tri�ngulo. O programa dever� informar se os valores
podem ser um tri�ngulo. Indique, caso os lados formem um tri�ngulo, se o mesmo �: equil�tero, is�sceles ou escaleno.
Dicas:
Tr�s lados formam um tri�ngulo quando a soma de quaisquer dois lados for maior que o terceiro;
Tri�ngulo Equil�tero: tr�s lados iguais;
Tri�ngulo Is�sceles: quaisquer dois lados iguais;
Tri�ngulo Escaleno: tr�s lados diferentes;*/
#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function ED_4_15()

    Local nN1 := 0
    Local nN2 := 0
    Local nN3 := 0
    Local lLoop := .t.

    while lLoop

        nN1 := FWInputBox("Informe o primeiro lado: ")
        nN2 := FWInputBox("Informe o segundo lado: ")
        nN3 := FWInputBox("Informe o terceiro lado: ")

        if nN1 == nN2 .and. nN1 == nN3 .or. nN2 == nN3 .and. nN2 == nN1
            MsgAlert("Tri�ngulo Equil�tero: tr�s lados iguais", "Tipos de Tri�ngulos")
        elseif nN1 == nN2 .or. nN1 == nN3 .or. nN2 == nN3 .and. nN2 == nN1
            MsgAlert("Tri�ngulo Is�sceles: quaisquer dois lados iguais", "Tipos de Tri�ngulos")
        else
            MsgAlert("Tri�ngulo Escaleno: tr�s lados diferentes", "Tipos de Tri�ngulos")        
        endif
        
        lLoop := MsgYesNo("Aperte SIM para refazer a opera��o", "Deseja sair?")

    end

RETURN
