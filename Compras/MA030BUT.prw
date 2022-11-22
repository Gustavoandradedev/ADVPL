#INCLUDE "RWMAKE.CH"


/*/

�������������������������������������������������������������������������ͻ��
���Programa  �MA030BUT  � Autor � Gustavo Andrade    � Data �  22/11/22   ���
�������������������������������������������������������������������������͹��
���Descricao � Ponto de entrada para inclusao de botao no cadastro de cli-���
���          �entes - Insere botao para abrir programa do correio         ���
�������������������������������������������������������������������������͹��

/*/

User Function MA030BUT()


	aButtons := {}
	Aadd(aButtons	, {'UPDWARNING',{||CEP()},"Correios"})
	Aadd(aButtons	, {'RESPONSA',{||CNPJ()},"Receita"})
	Aadd(aButtons	, {'COBROWSR',{||SINTEGRA()},"Sintegra"})
	Aadd(aButtons	, {'TESTE',{||GOOGLE()},"Google"})

Return(aButtons)


Static Function CEP()

	ShellExecute("open","http://www.buscacep.correios.com.br/servicos/dnec/index.do","","",2)

Return

Static Function SINTEGRA()

	ShellExecute("open","http://www.sintegra.gov.br/","","",2)

Return


Static Function CNPJ()

	ShellExecute("open","http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp","","",2)

Return

Static Function GOOGLE()

	ShellExecute("open","https://www.google.com/","","",2)

Return
