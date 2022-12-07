#INCLUDE "rwmake.ch"

/*/
���Descricao � PONTO DE ENTRADA VALIDA EXCLUSAO DO PEDIDO DE COMPRAS      ���
/*/

User Function MTA120E()
	Local aArea := GetArea()
	Local lRet := .T.
	cFluxo := SC7->C7_LOJA

	If !INCLUI .And. !ALTERA
		If cFluxo == "04"
			MsgStop("N�o � permitido excluir um pedido da loja 04","Atencao - MTA120E")
			lRet := .F.
		ENDIF
	EndIf
	RestArea(aArea)
Return(lRet)
