/*#25 � Listas (Arrays) 7
Utilizando listas fa�a um programa que fa�a 5 perguntas para uma pessoa sobre um crime. As perguntas s�o:
a."Telefonou para a v�tima?"
b."Esteve no local do crime?"
c."Mora perto da v�tima?"
d."Devia para a v�tima?"
e."J� trabalhou com a v�tima?"
A fun��o deve no final retornar uma classifica��o sobre a participa��o da pessoa no crime. 
Se a pessoa responder positivamente a 2 quest�es ela deve ser classificada como "Suspeita", 
entre 3 e 4 como "C�mplice" e 5 como "Assassino". Caso contr�rio, ele ser� classificado como "Inocente".*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array25()

    Local aPerguntas := {"Telefonou para a v�tima?","Esteve no local do crime?","Mora perto da v�tima?","Devia para a v�tima?","J� trabalhou com a v�tima?"}
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
            FWAlertWarning("VOC� � SUSPEITO(A)!","DECIS�O")
        elseif nContSim >= 3 .and. nContSim <= 4
            FWAlertWarning("VOC� � C�MPLICE!","DECIS�O") 
        elseif nContSim > 4
            FWAlertWarning("ASSASSINO!","DECIS�O")
        else
            FWAlertWarning("VOC� � INOCENTE!","DECIS�O")    
        endif

Return



