Use FamiliaJonsons_Varejo

GO

/*4. a) Aqui fazemos a consulta para saber qual produto vou cadastrado,
qual a sua categoria e quem cadastrou o mesmo */
Select 
P.NomeProduto as Produto,
C.NomeCategoria as Categoria,
F.NomeFuncionario as [Funcionário que cadastrou]
From 
	Produto P Inner Join Funcionario F on (P.IdFuncionario = F.IdFuncionario)
			   Inner Join Categoria C on (P.IdCategoria = C.IdCategoria)
/*4. b) Aqui fazemos uma consulta na tabela de pedidos para saber quem foi o cliente que fez o mesmo.
nota: Nesta consulta não mostramos os itens que o cliente comprou e sim somente o código do pedido e o cliente que fez*/
Select 
Pe.IdPedido,
C.NomeCliente,
C.TelefoneCliente
From 
Pedido Pe Inner Join Cliente C on (Pe.IdCliente = C.IdCliente)
/*4 c)Aqui fazemos uma consulta na tabela de ordem de pedido,
juntando com as outras tabelas para mostrar o código do pedido, nome do cliente,
*/
Select 
Pe.IdPedido as NumeroPedido,
C.NomeCliente,
Pe.DataPedido,
Pr.NomeProduto,
Os.QuantidadeProdutos
From 
OrdemServico Os Inner Join Pedido Pe on (Os.IdPedido = Pe.IdPedido)
			    Inner Join Cliente C on (Pe.IdCliente = C.IdCliente)
				Inner Join Produto Pr on (Os.IdProduto = Pr.IdProduto)
/*4 d) Aqui fazemos uma consulta na tabela de pedidos,
e não na de ordem de serviço só para deixar claro, e com isso vemos o cliente e seus pedidos */
Select 
C.NomeCliente,
Count(*) as [Quantidade de Pedidos]
From 
	Pedido P Inner Join Cliente C on (P.IdCliente = C.IdCliente)
	Group By C.NomeCliente Order By C.NomeCliente
