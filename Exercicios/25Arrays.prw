/*#25 – Listas (Arrays) 7
Utilizando listas faça um programa que faça 5 perguntas para uma pessoa sobre um crime. As perguntas são:
a."Telefonou para a vítima?"
b."Esteve no local do crime?"
c."Mora perto da vítima?"
d."Devia para a vítima?"
e."Já trabalhou com a vítima?"
A função deve no final retornar uma classificação sobre a participação da pessoa no crime. 
Se a pessoa responder positivamente a 2 questões ela deve ser classificada como "Suspeita", 
entre 3 e 4 como "Cúmplice" e 5 como "Assassino". Caso contrário, ele será classificado como "Inocente".*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array25()

    Local aPerguntas := {"Telefonou para a vítima?","Esteve no local do crime?","Mora perto da vítima?","Devia para a vítima?","Já trabalhou com a vítima?"}
    Local aRespostas := Array(5)
    Local nI := 0
    Local nContSim := 0
    
        for nI := 1 to len(aPerguntas)
            aRespostas[nI] := FWAlertYesNo(AllTrim(aPerguntas[nI]),"QUESTIONAMENTO")
            if aRespostas[nI] == .T.
                nContSim ++
            endif    
        next

        if nContSim == 2
            FWAlertWarning("VOCÊ É SUSPEITO(A)!","DECISÃO")
        elseif nContSim >= 3 .and. nContSim <= 4
            FWAlertWarning("VOCÊ É CÚMPLICE!","DECISÃO") 
        elseif nContSim > 4
            FWAlertWarning("ASSASSINO!","DECISÃO")
        else
            FWAlertWarning("VOCÊ É INOCENTE!","DECISÃO")    
        endif

Return



