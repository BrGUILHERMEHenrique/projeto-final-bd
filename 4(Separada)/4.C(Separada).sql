Use FamiliaJonsons_Varejo

Go

/*4 c)Aqui fazemos uma consulta na tabela de ordem de pedido,
juntando com as outras tabelas para mostrar o código do pedido, nome do cliente, nome do produto e quantidade comprada
*/
Select 
Pe.IdPedido as [Código do pedido],--E de novo usando o alias com colchetes para dar espaço entre as palavras
C.NomeCliente as Cliente,
Pe.DataPedido as [Data do pedido],
Pr.NomeProduto as Produto,
Os.QuantidadeProdutos as [Quantidade comprada]
From 
OrdemServico Os Inner Join Pedido Pe on (Os.IdPedido = Pe.IdPedido)
			    Inner Join Cliente C on (Pe.IdCliente = C.IdCliente)
				Inner Join Produto Pr on (Os.IdProduto = Pr.IdProduto)