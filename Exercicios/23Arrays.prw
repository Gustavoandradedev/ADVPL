/*#23 – Listas (Arrays) 5
Foram anotadas as idades e alturas de 30 alunos. Faça uma função que retorne 
em string quantos alunos com mais de 13 anos possuem altura inferior à média 
de altura desses alunos.*/

#INCLUDE "TOTVS.CH"
#INCLUDE "PROTHEUS.CH"

User Function array23()

    Local nIdades := {32,89,65,34,22,34,76,12,13,29,28,54,24,14,19}
    Local nAlturas := {1.87,1.65,1.23,1.89,1.90,1.32,1.56,1.87,1.04,1.21,1.06,1.76,1.58,1.96,1.87}
    Local nI := 0
    Local nContAltura := 0
    Local nCont := 0
    Local nMediaAltura := 0
    Local nQtd := 0

    for nI := 1 to len(nAlturas)
        nContAltura += nAlturas[nI]
        nCont ++
    next

    nMediaAltura := nContAltura / nCont

    for nI := 1 to len(nIdades)
        if nIdades[nI] > 13 .and. nAlturas[nI] < nMediaAltura
            nQtd ++
        endif
    next
    
    FWAlertSuccess(AllTrim(str(nQtd)) + " aluno(s) possuem mais de 13 anos e altura inferior à média de altura dos alunos","Resultado")
    
Return



