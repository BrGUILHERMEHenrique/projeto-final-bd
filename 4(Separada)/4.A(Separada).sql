Use FamiliaJonsons_Varejo

GO

/*4. a) Aqui fazemos a consulta para saber qual produto foi cadastrado,
qual a sua categoria e quem cadastrou o mesmo */
Select 
P.NomeProduto as Produto,-- Usando alias para dar um nome mais confort�vel para visualiza��o
C.NomeCategoria as Categoria,-- Usando alias para dar um nome mais confort�vel para visualiza��o
F.NomeFuncionario as [Funcion�rio que cadastrou]-- Usando alias entre colcheites para poder colocar espa�os entre as palavras
From 
	Produto P Inner Join Funcionario F on (P.IdFuncionario = F.IdFuncionario)
			   Inner Join Categoria C on (P.IdCategoria = C.IdCategoria)