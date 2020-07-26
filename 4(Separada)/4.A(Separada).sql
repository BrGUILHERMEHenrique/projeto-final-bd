Use FamiliaJonsons_Varejo

GO

/*4. a) Aqui fazemos a consulta para saber qual produto foi cadastrado,
qual a sua categoria e quem cadastrou o mesmo */
Select 
P.NomeProduto as Produto,-- Usando alias para dar um nome mais confortável para visualização
C.NomeCategoria as Categoria,-- Usando alias para dar um nome mais confortável para visualização
F.NomeFuncionario as [Funcionário que cadastrou]-- Usando alias entre colcheites para poder colocar espaços entre as palavras
From 
	Produto P Inner Join Funcionario F on (P.IdFuncionario = F.IdFuncionario)
			   Inner Join Categoria C on (P.IdCategoria = C.IdCategoria)