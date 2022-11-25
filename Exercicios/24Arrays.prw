/*#24 – Listas (Arrays) 6
Faça um programa que receba a temperatura média de cada mês do ano e armazene-as em uma lista.
Após isto, calcule a média anual das temperaturas e mostre todas as temperaturas acima da média anual,
e em que mês elas ocorreram (mostrar o mês por extenso: 1 – Janeiro, 2 – Fevereiro, . . . ).
Ref: http://www.estacao.iag.usp.br/seasons/index.php*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array24()

    Local aTemperatura := Array(12)
    Local aMeses := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    Local nI := 0
    Local nContTemp := 0
    Local nMediaTemp := 0
    
    while nI < 13
        for nI := 1 to len(aMeses)
            aTemperatura[nI] := Val(FWInputBox("Informe a temperatura do mês de "+ AllTrim(aMeses[nI]) + ":"))
            if aTemperatura[nI] >= -1.2 .and. aTemperatura[nI] <= 37.2
                nContTemp += aTemperatura[nI] 
            else
                FWAlertError("Temperatura Inválida!", "Erro:")
                nI--
            endif    
        next
    end

    nMediaTemp := nContTemp / 12

    for nI := 1 to len(aTemperatura)
        if aTemperatura[nI] > nMediaTemp
            FWAlertSuccess("A temperatura média do ano foi "+ AllTrim(str(Round(nMediaTemp,1))) + "°C" + CRLF + CRLF +;
            "O mês de " + AllTrim(aMeses[nI]) + " teve a temperatura de "+ AllTrim(STR(aTemperatura[nI])) +"°C","RESULTADO")
        endif
    next


Return



