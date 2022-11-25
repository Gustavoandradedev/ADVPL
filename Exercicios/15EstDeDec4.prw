/*#15 – Estrutura de decisão 4
Faça uma função que peça os 3 lados de um triângulo. O programa deverá informar se os valores
podem ser um triângulo. Indique, caso os lados formem um triângulo, se o mesmo é: equilátero, isósceles ou escaleno.
Dicas:
Três lados formam um triângulo quando a soma de quaisquer dois lados for maior que o terceiro;
Triângulo Equilátero: três lados iguais;
Triângulo Isósceles: quaisquer dois lados iguais;
Triângulo Escaleno: três lados diferentes;*/
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
            MsgAlert("Triângulo Equilátero: três lados iguais", "Tipos de Triângulos")
        elseif nN1 == nN2 .or. nN1 == nN3 .or. nN2 == nN3 .and. nN2 == nN1
            MsgAlert("Triângulo Isósceles: quaisquer dois lados iguais", "Tipos de Triângulos")
        else
            MsgAlert("Triângulo Escaleno: três lados diferentes", "Tipos de Triângulos")        
        endif
        
        lLoop := MsgYesNo("Aperte SIM para refazer a operação", "Deseja sair?")

    end

RETURN
