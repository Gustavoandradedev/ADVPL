/*#24 � Listas (Arrays) 6
Fa�a um programa que receba a temperatura m�dia de cada m�s do ano e armazene-as em uma lista.
Ap�s isto, calcule a m�dia anual das temperaturas e mostre todas as temperaturas acima da m�dia anual,
e em que m�s elas ocorreram (mostrar o m�s por extenso: 1 � Janeiro, 2 � Fevereiro, . . . ).
Ref: http://www.estacao.iag.usp.br/seasons/index.php*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array24()

    Local aTemperatura := Array(12)
    Local aMeses := {"Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    Local nI := 0
    Local nContTemp := 0
    Local nMediaTemp := 0
    
    while nI < 13
        for nI := 1 to len(aMeses)
            aTemperatura[nI] := Val(FWInputBox("Informe a temperatura do m�s de "+ AllTrim(aMeses[nI]) + ":"))
            if aTemperatura[nI] >= -1.2 .and. aTemperatura[nI] <= 37.2
                nContTemp += aTemperatura[nI] 
            else
                FWAlertError("Temperatura Inv�lida!", "Erro:")
                nI--
            endif    
        next
    end

    nMediaTemp := nContTemp / 12

    for nI := 1 to len(aTemperatura)
        if aTemperatura[nI] > nMediaTemp
            FWAlertSuccess("A temperatura m�dia do ano foi "+ AllTrim(str(Round(nMediaTemp,1))) + "�C" + CRLF + CRLF +;
            "O m�s de " + AllTrim(aMeses[nI]) + " teve a temperatura de "+ AllTrim(STR(aTemperatura[nI])) +"�C","RESULTADO")
        endif
    next


Return



