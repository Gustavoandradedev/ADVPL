/*#22 � Listas (Arrays) 4
Fa�a um Programa que pe�a as quatro notas de 10 alunos, calcule e armazene 
num vetor a m�dia de cada aluno, imprima o n�mero de alunos com m�dia maior 
ou igual a 7.0. em String atrav�s de um MSGALERT().*/


#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array22()
    Local aAlunos := Array(10,5)
    Local cText := ""
    Local cNota := ""
    Local nI := 0
    Local nJ := 0

    for nI := 1 to 10
        for nJ := 1 to 4
            while .T.
                aAlunos[nI][nJ] := Val(FWInputBox("Aluno " +  AllTrim(STR(nI)) + ", " + AllTrim(STR(nJ)) + "� nota:", cNota))
                if (aAlunos[nI][nJ] >= 0) .And. (aAlunos[nI][nJ] <= 10)
                    exit
                else
                    FWAlertError("Nota inv�lida", "Erro:")
                endIf
            end
        next

        aAlunos[nI][5] := calculaMedia(nI, aAlunos)

        if aAlunos[nI][5] >= 7
            cText += "Aluno " + AllTrim(STR(nI)) + CRLF + "M�dia: " + AllTrim(STR(aAlunos[nI][5])) + CRLF + CRLF
        endif
    next
    
    MsgAlert(cText, "Alunos com m�dia acima de 7")

Return

Static Function calculaMedia(nAluno, aNotas)
    Local nMedia := 0
    Local nTotalNotas := 0
    Local nI := 0

    for nI := 1 to 4
        nTotalNotas += aNotas[nAluno][nI]
    next
    
    nMedia := nTotalNotas / 4
    
Return nMedia


