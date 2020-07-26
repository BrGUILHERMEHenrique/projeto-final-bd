Use FamiliaJonsons_Varejo

Go 

/*4 d) Aqui fazemos uma consulta na tabela de pedidos,
e n�o na de ordem de servi�o s� para deixar claro, e com isso vemos o cliente e seus pedidos */
Select 
C.NomeCliente as Cliente,
Count(*) as [Quantidade de Pedidos]
From 
	Pedido P Inner Join Cliente C on (P.IdCliente = C.IdCliente)
	Group By C.NomeCliente Order By C.NomeCliente
	/*Aqui em especifico agrupamos count pelo nome do cliente e depois ordenamos de forma crescente*/