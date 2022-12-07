#include "protheus.ch"

// Exemplo da função EXISTBLOCK() executando o ponto de entrada

//FUNCAO PRINCIPAL
User Function PEntrada()
	Local cNota  := "XXX"
	Local cSerie := "01"
	Local cFornece := "000001"
	Local cLoja := "01"
	Local cLoja2 := "02"
	Local cLoja3 := "03"
	Local lGravou := .F.
	Local aParam := {cNota, cSerie, cFornece, cLoja,cLoja2,cLoja3}


	IF EXISTBLOCK("PEcexb")
		lGravou := EXECBLOCK("PEcexb",.F.,.F.,aParam)
	ENDIF
RETURN


//PONTO DE ENTRADA
USER FUNCTION PEcexb()

	LOCAL cNota := PARAMIXB[1]
	LOCAL cSerie:= PARAMIXB[2]
	LOCAL cFornece:= PARAMIXB[3]
	LOCAL cLoja:= PARAMIXB[4]
	LOCAL cLoja2 := PARAMIXB[5]
	LOCAL cLoja3 := PARAMIXB[6]

	ApMsgAlert('Nota: '+cNota)
	ApMsgAlert('Serie: '+cSerie)
	ApMsgAlert('Fornece: '+cFornece)
	ApMsgAlert('Loja: '+cLoja)
	ApMsgAlert('Loja2: '+cLoja2)
	ApMsgAlert('Loja3: '+cLoja3)

RETURN .T.

